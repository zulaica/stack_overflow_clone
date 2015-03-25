class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # this is where the Railscast says to add the mailer to the users_controller.
      UserMailer.signup_confirmation(@user).deliver
      flash[:notice] = "Your account has been successfully created, " + @user.username
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
    render :edit
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "Your account has been successfully updated, " + @user.username
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end

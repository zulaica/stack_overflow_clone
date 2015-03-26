class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = current_user.questions.new(question_params)
    @question.published = Time.now
    if @question.save
      flash[:notice] = "Your question was posted."
      redirect_to questions_path
    else
      render :new
    end
  end

private

  def question_params
    params.require(:question).permit(:title, :body, :image)
  end

end

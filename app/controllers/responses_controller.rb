class ResponsesController < ApplicationController

  def new
    @question = Question.find(params[:question_id])
    @response = Response.new
    render :new
  end

  def create
    @question = Question.find(params[:question_id])
    @response = @question.responses.new(response_params)
    @response.published = Time.now
    if @response.save
      flash[:notice] = "Your response is appreciated!"
      redirect_to question_path(@question)
    else
      render :new
    end
  end

private

  def response_params
    params.require(:response).permit(:body)
  end

end

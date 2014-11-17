class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
	@answer.user_id=current_user.id
	@answer.question_id=@question.id
    @answer.save
    
    redirect_to question_path(@question)
  end
  
  private
    def answer_params
      params.require(:answer).permit(:body)
    end
end

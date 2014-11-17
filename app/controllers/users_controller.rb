class UsersController < ApplicationController
  def index
    @user = User.find(params[:user_id])
  end
  
  def questions
    @user = User.find(params[:user_id])
	@questions=@user.questions
  end	
	
  def answers
    @user = User.find(params[:user_id])
	answers=@user.answers
	@questions=[]
	answers.each do |answer|
	  @questions<<Question.find_by_id(answer.question_id)
	end
  end
  
  
  
  private
    def user_params
      params.require(:user).permit(:user_id)
    end
end

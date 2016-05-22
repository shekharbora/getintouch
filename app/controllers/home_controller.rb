class HomeController < ApplicationController
before_action :authenticate_user!
respond_to :html,:js

	def index
        @question_answers =QuestionAnswer.order(created_at: :desc).paginate(:page => params[:page], :per_page => 6) 
        respond_with(@question_answers)  

	end
    

    def post_status
    	@staus  = current_user.question_answers.new(question_answer_params)
    	@staus.save
    	respond_to do |format|
         format.js{}
       end 
    end
    
    def search_question
       @question_answers = QuestionAnswer.search(params[:search])
        respond_to do |format|
         format.js{}
       end 
    end

private
   
    def question_answer_params
       params.require(:question_answer).permit(:question, :answer, :url)
    end

end

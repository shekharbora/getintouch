class HomeController < ApplicationController
before_action :authenticate_user!,except: [:all_question]
respond_to :html,:js

	def index
        @question_answers = QuestionAnswer.all.order(created_at: :desc).paginate(:page => params[:page], :per_page => 6) 
        respond_with(@question_answers)  

	end
    

    def post_status
    	@staus  = current_user.question_answers.new(question_answer_params)
    	@staus.save
    	respond_to do |format|
           format.html { redirect_to home_index_path, notice: 'Thanks' }
       end 
    end
    
    def search_question
       @question_answers = QuestionAnswer.search(params[:search])
        respond_to do |format|
         format.js{}
       end 
    end

    def all_members
        @members=User.all
    end

    def all_question
        @question_answers = QuestionAnswer.all
        respond_with(@users) do |format|
          format.json { render :json => @question_answers.as_json }
          format.html
      end
  end

private
   
    def question_answer_params
       params.require(:question_answer).permit(:question, :answer, :url)
    end

end

class HomeController < ApplicationController
before_action :authenticate_user!
respond_to :html,:js

	def index
		
	end
    

    def post_status
    	@staus  = current_user.status.new(status_params)
    	@staus.save
    	respond_with(@staus)
    end





private
   
    def status_params
      params.require(:status).permit(:user_id, :status)
    end

end

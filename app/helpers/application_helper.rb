module ApplicationHelper


	def get_desplay_name(user)
		if ((user.firstname.present?)&&(user.lastname.present?))
			name = user.firstname+' '+user.lastname
		else
			name = user.email
		end	
	end
end

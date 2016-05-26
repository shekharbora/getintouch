module ApplicationHelper


	def get_desplay_name(user)
		if ((user.firstname.present?)&&(user.lastname.present?))
			name = user.firstname+' '+user.lastname
		else
			name = user.email
		end	
	end

	def get_posted_name(f)
		if ((f.user.firstname.present?)&&(f.user.lastname.present?))
			name = f.user.firstname+' '+f.user.lastname
		else
			name = f.user.email
		end
	end
end

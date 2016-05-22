class QuestionAnswer < ActiveRecord::Base
	belongs_to :user



def self.search(search)
  if search  	
  where("question like ?", "#{search}%")
  else
    find(:all)
  end
end


end

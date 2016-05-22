class AddUserInQuestionAnswer < ActiveRecord::Migration
  def change
  	 add_column :question_answers, :user_id, :integer
  end
end

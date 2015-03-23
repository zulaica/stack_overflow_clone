class AddUserIdToQuestionsAndResponses < ActiveRecord::Migration
  def change
    add_column :questions, :user_id, :integer
    add_column :responses, :user_id, :integer
  end
end

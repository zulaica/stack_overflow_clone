class RemoveColumnsQuestionIdAndResponseIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :question_id
    remove_column :users, :response_id
  end
end

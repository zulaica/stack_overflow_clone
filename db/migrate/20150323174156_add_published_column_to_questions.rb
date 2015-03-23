class AddPublishedColumnToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :published, :datetime
  end
end

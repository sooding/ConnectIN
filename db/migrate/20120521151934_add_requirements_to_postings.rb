class AddRequirementsToPostings < ActiveRecord::Migration
  def change
    add_column :postings, :requirements, :text
  end
end

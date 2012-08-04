class AddDescriptionToPostings < ActiveRecord::Migration
  def change
    add_column :postings, :description, :text
  end
end

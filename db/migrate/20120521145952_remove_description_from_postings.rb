class RemoveDescriptionFromPostings < ActiveRecord::Migration
  def up
    remove_column :postings, :description
      end

  def down
    add_column :postings, :description, :string
  end
end

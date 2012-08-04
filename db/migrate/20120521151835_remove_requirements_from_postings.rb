class RemoveRequirementsFromPostings < ActiveRecord::Migration
  def up
    remove_column :postings, :requirements
      end

  def down
    add_column :postings, :requirements, :string
  end
end

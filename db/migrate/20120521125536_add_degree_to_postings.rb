class AddDegreeToPostings < ActiveRecord::Migration
  def change
    add_column :postings, :degree, :string
  end
end

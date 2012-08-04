class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.string :title
      t.string :description
      t.string :requirements
      t.string :city
      t.string :state
      t.string :zipcode
      t.decimal :salary
      t.string :duration

      t.timestamps
    end
  end
end

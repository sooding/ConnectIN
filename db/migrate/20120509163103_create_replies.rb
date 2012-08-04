class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.text :content
      t.integer :contractor_id
      t.integer :company_id
      t.integer :opinion_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end

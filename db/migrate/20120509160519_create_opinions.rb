class CreateOpinions < ActiveRecord::Migration
  def change
    create_table :opinions do |t|
      t.text :content
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :contractor_id
      t.integer :company_id
      t.integer :posting_id

      t.timestamps
    end
  end
end

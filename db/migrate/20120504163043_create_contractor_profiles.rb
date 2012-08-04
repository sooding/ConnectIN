class CreateContractorProfiles < ActiveRecord::Migration
  def change
    create_table :contractor_profiles do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.float :lat
      t.float :lng
      t.string :school
      t.string :major
      t.string :degree
      t.string :license
      t.text :skills
      t.text :interests
      t.string :website
      t.string :work
      t.string :length
      t.integer :salary

      t.timestamps
    end
  end
end

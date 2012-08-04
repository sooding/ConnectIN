class CreateContractors < ActiveRecord::Migration
  def change
    create_table :contractors do |t|
      t.string :firstName
      t.string :lastName
      t.string :email

      t.timestamps
    end
  end
end

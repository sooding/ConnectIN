class AddIndexToContractorsEmail < ActiveRecord::Migration
  def change
  	add_index :contractors, :email#, unique: true
  end
end

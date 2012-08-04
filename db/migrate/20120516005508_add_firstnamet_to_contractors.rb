class AddFirstnametToContractors < ActiveRecord::Migration
  def change
    add_column :contractors, :firstname, :string
  
  end
end

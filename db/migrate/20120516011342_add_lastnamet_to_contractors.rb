class AddLastnametToContractors < ActiveRecord::Migration
  def change
    add_column :contractors, :lastname, :string
 
  end
end

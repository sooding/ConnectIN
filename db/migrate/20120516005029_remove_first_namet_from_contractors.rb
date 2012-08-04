class RemoveFirstNametFromContractors < ActiveRecord::Migration
  def up
    remove_column :contractors, :firstName
      
      end

  def down
    
    add_column :contractors, :firstname, :string
  end
end

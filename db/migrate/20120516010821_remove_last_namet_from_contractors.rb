class RemoveLastNametFromContractors < ActiveRecord::Migration
  def up
    remove_column :contractors, :lastName

      end

  def down
 
    add_column :contractors, :lastname, :string
  end
end

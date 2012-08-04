class RemoveProfessionFromContractors < ActiveRecord::Migration
  def up
    remove_column :contractors, :profession
      end

  def down
    add_column :contractors, :profession, :string
  end
end

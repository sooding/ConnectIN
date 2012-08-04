class AddProfessionToContractors < ActiveRecord::Migration
  def change
    add_column :contractors, :profession, :string
  end
end

class AddInformationToContractors < ActiveRecord::Migration
  def change
    add_column :contractors, :title, :string
    add_column :contractors, :city, :string
    add_column :contractors, :state, :string
  end
end

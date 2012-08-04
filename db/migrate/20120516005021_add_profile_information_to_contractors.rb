class AddProfileInformationToContractors < ActiveRecord::Migration
  def change
    add_column :contractors, :skills, :text
    add_column :contractors, :school, :string
    add_column :contractors, :degree, :string
    add_column :contractors, :salary, :integer
  end
end

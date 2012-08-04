class AddInformationToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :title, :string
    add_column :companies, :degree, :string
    add_column :companies, :city, :string
    add_column :companies, :state, :string
  end
end

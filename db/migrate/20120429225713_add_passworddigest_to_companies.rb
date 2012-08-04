class AddPassworddigestToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :password_digest, :string
  end
end

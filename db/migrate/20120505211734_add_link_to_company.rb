class AddLinkToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :link, :string
  end
end

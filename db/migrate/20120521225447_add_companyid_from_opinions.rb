class AddCompanyidFromOpinions < ActiveRecord::Migration
  def change
    add_column :opinions, :company_id, :integer
  end
end

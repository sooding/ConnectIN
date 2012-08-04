class RemoveCompanyidFromOpinions < ActiveRecord::Migration
  def up
    remove_column :opinions, :company_id
      end

  def down
    add_column :opinions, :company_id, :string
  end
end

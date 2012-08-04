class AddProfessionToContractorProfiles < ActiveRecord::Migration
  def change
    add_column :contractor_profiles, :profession, :string
  end
end

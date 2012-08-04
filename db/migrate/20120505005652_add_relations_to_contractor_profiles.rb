class AddRelationsToContractorProfiles < ActiveRecord::Migration
  def change
    add_column :contractor_profiles, :contractor_id, :integer

  end
end

class AddAvatarToContractorProfile < ActiveRecord::Migration
  def self.up
    change_table :contractor_profiles do |t|
      t.has_attached_file :avatar
    end
  end

  def self.down
    drop_attached_file :contractor_profiles, :avatar
  end
end 
  


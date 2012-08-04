class AddPasswordDigestToContractors < ActiveRecord::Migration
  def change
    add_column :contractors, :password_digest, :string
  end
end

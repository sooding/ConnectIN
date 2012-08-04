class AddRememberTokenToContractors < ActiveRecord::Migration
  def change
    add_column :contractors, :remember_token, :string
    add_index  :contractors, :remember_token
  end
end

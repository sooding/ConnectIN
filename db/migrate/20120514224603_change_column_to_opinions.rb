class ChangeColumnToOpinions < ActiveRecord::Migration
  def up
	  remove_column :contractors, :firstName, :string
  end

  def down
	  add_column :contractors, :firstname, :string
  end
end

class RemovePostingIdFromOpinions < ActiveRecord::Migration
  def up
    remove_column :opinions, :posting_id
      end

  def down
    add_column :opinions, :posting_id, :integer
  end
end

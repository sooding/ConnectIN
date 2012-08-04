class AddPostingIdToOpinions < ActiveRecord::Migration
  def change
    add_column :opinions, :posting_id, :string
  end
end

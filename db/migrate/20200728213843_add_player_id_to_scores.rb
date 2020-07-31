class AddPlayerIdToScores < ActiveRecord::Migration[6.0]
  def change
    add_column :scores, :player_id, :integer
  end
end

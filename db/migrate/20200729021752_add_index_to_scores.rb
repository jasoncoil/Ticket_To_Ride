class AddIndexToScores < ActiveRecord::Migration[6.0]
  def change
    add_index(:scores, :player_id, name: "index_scores_on_player_id")
  end
end

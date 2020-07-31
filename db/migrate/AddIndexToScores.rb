class AddIndexToScores < ActiveRecord::Migration
  def add
    add_index(:scores, :game_id, name: 'index_scores_on_game_id')
  end
end

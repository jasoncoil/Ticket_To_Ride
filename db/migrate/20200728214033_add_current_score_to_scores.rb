class AddCurrentScoreToScores < ActiveRecord::Migration[6.0]
  def change
    add_column :scores, :current_score, :integer
  end
end

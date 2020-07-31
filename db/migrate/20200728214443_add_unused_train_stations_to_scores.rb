class AddUnusedTrainStationsToScores < ActiveRecord::Migration[6.0]
  def change
    add_column :scores, :unused_train_stations, :integer
  end
end

class AddDefaultValueToUnusedTrainStations < ActiveRecord::Migration[6.0]
  def change
    change_column :scores, :unused_train_stations, :integer, default: 0
  end
end

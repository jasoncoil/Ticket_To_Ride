class AddLongestTrainRouteToScores < ActiveRecord::Migration[6.0]
  def change
    add_column :scores, :longest_train_route, :integer
  end
end

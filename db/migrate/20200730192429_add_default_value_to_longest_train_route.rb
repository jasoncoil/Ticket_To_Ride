class AddDefaultValueToLongestTrainRoute < ActiveRecord::Migration[6.0]
  def change
    change_column :scores, :longest_train_route, :integer, default: 0
  end
end

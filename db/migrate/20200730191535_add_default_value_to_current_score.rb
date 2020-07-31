class AddDefaultValueToCurrentScore < ActiveRecord::Migration[6.0]
  def change
    change_column :scores, :current_score, :integer, default: 0
  end
end

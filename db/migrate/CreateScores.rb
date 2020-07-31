class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :game_id
      t.integer :player_id
      t.integer :current_score, default:0
      t.integer :completed_tickets, default:0
      t.integer :uncompleted_tickets, default:0
      t.integer :unused_train_stations, default:0
      t.integer :longest_train_route, default:0
      t.timestamps
    end
  end
end

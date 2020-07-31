class Score < ApplicationRecord
  belongs_to :game
  belongs_to :player

  def unused_station_score
    unused_train_stations * 3
  end

  def total_score
    current_score + completed_tickets - uncompleted_tickets + unused_station_score
  end

end

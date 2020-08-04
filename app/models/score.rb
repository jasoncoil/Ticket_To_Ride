class Score < ApplicationRecord
  belongs_to :game
  belongs_to :player

  accepts_nested_attributes_for :player

  def unused_station_score
    unused_train_stations * 4
  end

  def total_score
    if game.is_longest_route?(self) == true
      current_score + completed_tickets - uncompleted_tickets + unused_station_score + 10
    else
      current_score + completed_tickets - uncompleted_tickets + unused_station_score
    end
  end


end

class Game < ApplicationRecord
  has_many :scores
  has_many :players, through: :scores

  def is_longest_route?(score)
    @longest_route = scores.max {|a,b| a.longest_train_route<=>b.longest_train_route}
    if score == @longest_route
      return true
    else
      return false
    end
  end
end

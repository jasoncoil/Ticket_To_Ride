class AddUncompletedTicketsToScores < ActiveRecord::Migration[6.0]
  def change
    add_column :scores, :uncompleted_tickets, :integer
  end
end

class AddCompletedTicketsToScores < ActiveRecord::Migration[6.0]
  def change
    add_column :scores, :completed_tickets, :integer
  end
end

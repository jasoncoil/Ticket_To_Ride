class AddDefaultValueToCompletedTickets < ActiveRecord::Migration[6.0]
  def change
    change_column :scores, :completed_tickets, :integer, default: 0
  end
end

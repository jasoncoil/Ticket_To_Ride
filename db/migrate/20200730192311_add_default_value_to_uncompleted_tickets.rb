class AddDefaultValueToUncompletedTickets < ActiveRecord::Migration[6.0]
  def change
    change_column :scores, :uncompleted_tickets, :integer, default: 0
  end
end

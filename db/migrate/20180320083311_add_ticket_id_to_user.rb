class AddTicketIdToUser < ActiveRecord::Migration[5.1]
  def change
    add_belongs_to :tickets, :user
  end
end

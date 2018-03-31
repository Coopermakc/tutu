class AddStationsToTicket < ActiveRecord::Migration[5.1]
  def change
    add_column :tickets, :start_station_id, :integer
    add_column :tickets, :finish_station_id, :integer
  end
end

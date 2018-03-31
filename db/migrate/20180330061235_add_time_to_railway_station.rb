class AddTimeToRailwayStation < ActiveRecord::Migration[5.1]
  def change
    add_column :railway_stations_routs, :arrive_time, :time
    add_column :railway_stations_routs, :departure_time, :time
  end
end

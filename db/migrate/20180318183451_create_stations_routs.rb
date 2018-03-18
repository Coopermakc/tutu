class CreateStationsRouts < ActiveRecord::Migration[5.1]
  def change
    create_table :railway_stations_routs do |t|
      t.integer :railway_station_id
      t.integer :rout_id
    end
  end
end

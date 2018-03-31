class AddPositionToRailwayStation < ActiveRecord::Migration[5.1]
  def change
    add_column :railway_stations_routs, :position, :integer
  end
end

class RailwayStationsRout < ActiveRecord::Base
  belongs_to :railway_station
  belongs_to :rout

  validates :railway_station_id, uniqueness: { scope: :rout_id }
<<<<<<< HEAD
=======

>>>>>>> cb6962dc82f7267f4e6d7cb01f6eadf76c639b68
  default_scope { order(:position) }
end

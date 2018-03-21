class RailwayStation < ApplicationRecord


  has_many :trains, foreign_key: :current_station_id
  has_many :railway_stations_routs
  has_many :routs, through: :railway_stations_routs
  validates :title, presence: true
end

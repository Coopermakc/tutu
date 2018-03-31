class RailwayStation < ApplicationRecord


  has_many :trains, foreign_key: :current_station_id
  has_many :railway_stations_routs
  has_many :routs, through: :railway_stations_routs
  validates :title, presence: true

  scope :ordered, -> { joins(:railway_stations_routs).order("railway_stations_routs.position") }

  def update_position(rout, position)
    station_rout = station_rout(rout)
    station_rout.update(position: position) if station_rout
  end

  def position_in(rout)
  station_rout(rout).try(:position)
  end

  protected

  def station_rout(rout)
    @station_rout ||= railway_stations_routs.where(rout: rout).first
  end
end

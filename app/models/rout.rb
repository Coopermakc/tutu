class Rout < ActiveRecord::Base

  has_many :railway_stations_routs
  has_many :railway_stations, through: :railway_stations_routs

  validates :title, presence: true


end

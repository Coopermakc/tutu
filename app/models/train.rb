class Train < ApplicationRecord


  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  belongs_to :rout
  has_many :tickets
  has_many :carriages

  validates :number, presence: true

end

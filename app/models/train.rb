class Train < ApplicationRecord
  validates :number, presence: true

  belongs_to :current_station, class_name: 'RailwayStation'#, foreign_key: :current_station_id
  belongs_to :rout, class_name: 'Rout'#, foreign_key: :rout_id
end

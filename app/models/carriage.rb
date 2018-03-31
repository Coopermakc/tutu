class Carriage < ApplicationRecord
  belongs_to :train
  validates :number, :up_seats, :down_seats, presence: true
end

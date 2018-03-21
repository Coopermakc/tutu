class Ticket < ApplicationRecord
  belongs_to :train
  belongs_to :user
  validates :number, presence: true
end

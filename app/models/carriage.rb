class Carriage < ActiveRecord::Base
  belongs_to :train
  validates  :up_seats, :down_seats, presence: true
  validates :number, uniqueness: { scope: :train_id }

  before_validation :set_number

  private
  def set_number
    number = train.carriages.maximum(:number)
    self.number = number.nil? ? 1:number+1
  end
end

class Carriage < ActiveRecord::Base
  belongs_to :train
<<<<<<< HEAD
  validates :number, :up_seats, :down_seats, presence: true
=======
  validates  :up_seats, :down_seats, presence: true
  validates :number, uniqueness: { scope: :train_id }

  before_validation :set_number

  private
  def set_number
    number = train.carriages.maximum(:number)
    self.number = number.nil? ? 1:number+1
  end
>>>>>>> cb6962dc82f7267f4e6d7cb01f6eadf76c639b68
end

class EconomyCar < Carriage
  validates :side_up_seats, :side_down_seats, presence: true
end

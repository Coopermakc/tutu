class Rout < ActiveRecord::Base

  has_many :railway_stations_routs
  has_many :railway_stations, through: :railway_stations_routs
  has_many :trains


  validates :title, presence: true
  validate :stations_count

  before_validation :set_name

  private
<<<<<<< HEAD

  def set_name
    self.title = "#{railway_stations.first.title} -
                    #{railway_stations.last.title}"
=======
  def set_name
    self.title = "#{railway_stations.first.title} - #{railway_stations.last.title}"
  end

  def stations_count
    if railway_stations.size < 2
      errors.add(:base, "В маршруте должно быть минимум 2 станции!")
    end
>>>>>>> cb6962dc82f7267f4e6d7cb01f6eadf76c639b68
  end

  def stations_count
    if railway_stations.size < 2
      errors.add(:base, "Маршрут должен содержать минимум 2 станции!")
    end
  end

end

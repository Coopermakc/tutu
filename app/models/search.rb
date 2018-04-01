class Search

  def self.search_trains(start_station, finish_station)
    if start_station != finish_station
    routs= Rout.joins(:railway_stations).where(railway_stations: { id: start_station }) &
     Rout.joins(:railway_stations).where(railway_stations: { id: finish_station} )
     Train.joins(:rout).where(rout: routs)
    end
   end

end

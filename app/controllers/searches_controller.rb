class SearchesController < ApplicationController

  def show
  end
  def new
  end

  def create
    @trains = Search.search_trains(params[:start_station_id], params[:finish_station_id])
    render :show
  end


end

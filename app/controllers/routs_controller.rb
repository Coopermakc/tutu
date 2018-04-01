
class RoutsController < ApplicationController

   before_action :set_rout, only: [:show, :edit, :update, :destroy]

  def index
    @routs = Rout.all
  end

  def show
  end

  def new
    @rout = Rout.new
  end

  def create
    @rout = Rout.new(rout_params)

    @rout.title = "#{params[:start_station_title]} - #{params[:final_station_title]}"


    if @rout.save
      redirect_to @rout
    else
      render :new
    end
  end

  def edit
  end

  def update

    if @rout.update(rout_params)
      redirect_to @rout
    else
      render :edit
    end
  end

  def destroy
    @rout.destroy
    redirect_to routs_path
  end

  private

  def set_rout
    @rout = Rout.find(params[:id])
  end

  def rout_params
    params.permit(railway_station_ids: [])
  end
end

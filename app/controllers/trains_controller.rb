class TrainsController < ApplicationController
  before_action :set_train, only: [:show, :edit, :update, :destroy]

  # GET /trains
  # GET /trains.json
  def index
    @trains = Train.all
  end


  def show
  end


  def new
    @train = Train.new
  end


  def edit
  end


  def create
    @train = Train.new(train_params)
    if @train.save
      redirect_to @train
    else
      render :new
    end
  end


  def update

    if @train.update(train_params)
      redirect_to @train
    else
      render :edit
    end
  end


  def destroy
    @train.destroy
    redirect_to trains_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_train
      @train = Train.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def train_params
      params.require(:train).permit(:number,:rout_id, :current_station_id)
    end
end

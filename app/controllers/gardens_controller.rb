class GardensController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_garden, only: [:show, :edit, :update, :destroy]

  def index
    if params[:city] != ""
      @gardens = Garden.where(city: params[:city])
    else
      @gardens = Garden.all
    end
  end

  def show
  end

  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(params[:garden])
    if @garden.save
      redirect_to gardens_path(@garden)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @garden.update(garden_params)
    redirect_to garden_path(@garden)
  end

  def destroy
    @garden.destroy
    redirect_to gardens_path
  end


  private

  def set_garden
    @garden = Garden.find(params[:id])
  end

  def garden_params
    params.require(:garden).permit(:name, :description, :city)
  end
end

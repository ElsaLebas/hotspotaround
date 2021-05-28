class SpotsController < ApplicationController
  def index
    @spots = Spot.all
  end

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.save
    redirect_to "/"
  end

  private

  def spot_params
    params.require(:spot).permit(:title, :address, :description)
  end
end

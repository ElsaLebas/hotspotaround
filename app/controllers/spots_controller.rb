class SpotsController < ApplicationController
  def index
    @spots = Spot.all

    # the `geocoded` scope filters only spots with coordinates (latitude & longitude)
    @markers = @spots.geocoded.map do |spot|
      {
        lat: spot.latitude,
        lng: spot.longitude
      }
    end
  end

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.save
    redirect_to "spots"
  end

  private

  def spot_params
    params.require(:spot).permit(:title, :address, :description)
  end
end

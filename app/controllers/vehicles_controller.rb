class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show]

  def index
    @vehicles = Vehicle.all.order(:created_at)

    @markers = @vehicles.geocoded.map do |vehicle|
      {
        lat: vehicle.latitude,
        lng: vehicle.longitude
      }
    end
  end

  def show
    @renting = Renting.new
  end



  private

  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end
end

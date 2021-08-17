class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show]

  def index
    @vehicles = Vehicle.all
  end

  def show
    @renting = Renting.new
  end

  private

  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end
end

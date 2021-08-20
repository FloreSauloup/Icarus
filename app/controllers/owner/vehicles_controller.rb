class Owner::VehiclesController < ApplicationController
  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(params_vehicle)
    @vehicle.owner = current_user
    if @vehicle.save!
      redirect_to vehicles_path
    else
      render "form"
    end
  end
end

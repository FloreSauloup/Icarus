class Owner::VehiclesController < ApplicationController
  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(params_vehicle)
    @vehicle.owner = current_user
    if @vehicle.save!
      redirect_to vehicle_path(@vehicle)
    else
      render :new
    end
  end

  private
  def params_vehicle
    params.require(:vehicle).permit(:address, :name, :summary, :photo, :vehicle_type, :total_seats, :price_per_day)
  end
end

class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show]

  def index
    @vehicles = Vehicle.all.order(:created_at)

    @markers = @vehicles.geocoded.map do |vehicle|
      {
        lat: vehicle.latitude,
        lng: vehicle.longitude,
        info_window: render_to_string(partial: "info_window", locals: { vehicle: vehicle })
      }
    end
  end

  def show
    @renting = Renting.new
    @rentings = Renting.where(vehicle_id: @vehicle.id)
    @rentings_dates = @rentings.map do |renting|
      {
        from: renting.start_date,
        to: renting.end_date
      }
    end
  end



  private

  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end
end

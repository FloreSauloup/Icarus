class RentingsController < ApplicationController
  before_action :set_renting, except: [:create, :index]
  before_action :set_vehicle, only: [:create]

  def index
    @rentings = Renting.where(user: current_user)
  end

  # def show
  #   @renting = Renting.find(params[:id])
  #   @vehicle = Vehicle.new
  # end

  def new
    @renting = Renting.new
  end

  def create
    # binding.pry
    @renting = Renting.new(params_renting)
    @renting.user = current_user
    @renting.vehicle = @vehicle
    @renting.total_price = @renting.total_days * @vehicle.price_per_day
    if @renting.save!
      redirect_to rentings_path
    else
      render "vehicles/show"
    end
  end

  def destroy
    @renting = Renting.find(params[:id])
    @renting.destroy

    redirect_to renting_path(@vehicle.renting)
  end

  def edit
  end

  def update
    if @renting.update(params_renting)
      redirect_to renting_path
    else
      render 'edit'
    end
  end

  def new
    Renting.create!(@renting)
  end

  private

  def params_renting
    params.require(:renting).permit(
      :total_price,
      :start_date,
      :end_date
    )
  end

  def set_renting
    @renting = Renting.find(params[:id])
  end

  def set_vehicle
    @vehicle = Vehicle.find(params[:vehicle_id])
  end
end

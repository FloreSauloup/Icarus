class RentingsController < ApplicationController
  before_action :set_renting, except: [:create, :index]

  def index
    @rentings = Renting.where(user: current_user)
  end

  def show
    @renting = Renting.find(params[:id])
    @vehicle = Vehicle.new
  end

  def new
    @renting = Renting.new
  end

  def create
    # binding.pry
    @renting = Renting.new(params_renting)
    @renting.user_id = current_user.id
    @renting.vehicle = Vehicle.find(params[:vehicle_id])
    if @renting.save
      redirect_to rentings_path
    else
      render "vehicles/show/#{params[:vehicle_id]}"
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
      :status,
      :total_price,
      :start_date,
      :end_date
    )
  end

  def set_renting
    @renting = Renting.find(params[:id])
  end
end

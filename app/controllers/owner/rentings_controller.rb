class Owner::RentingsController < ApplicationController

  def index
    @rentings = Renting.includes(vehicle: :owner).where(vehicles: {owner: current_user})
  end

  def accept
    @renting = Renting.find(params[:id])
    @renting.status = "Accept"
    @renting.save
    redirect_to owner_rentings_path
  end

  def decline
    @renting = Renting.find(params[:id])
    @renting.status = "Decline"
    @renting.save
    redirect_to owner_rentings_path
  end

  def destroy
    @renting = Renting.find(params[:id])
    @renting.destroy

    redirect_to owner_rentings_path
  end
end

class Owner::RentingsController < ApplicationController

  def index
    @rentings = Renting.includes(vehicle: :owner).where(vehicles: {owner: current_user})
  end

  # def accept
  #   if @rentings.accept.each do |renting|
  #     renting.status == "accepted"
  #     end
  #     redirect_to owner_rentings_path
  #   end
  # end

  # def decline
  #   if @rentings.decline
  #     redirect_to owner_rentings_path
  #   end
  # end
end

class RentingsController < ApplicationController
  before_action :set_renting, only: [:show]

  def index
    @rentings = Renting.all
  end

  def show
    @renting = Renting.new
  end

  def delete
    @renting.destroy
  end

  private

  def set_renting
    @renting = Renting.find(params[:id])
  end
end

class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def connected?
    @user
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end

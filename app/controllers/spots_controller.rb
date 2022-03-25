class SpotsController < ApplicationController
  PER_PAGE = 12

  def index
    @spots = Spot.order(id: :asc).page(params[:page]).per(PER_PAGE)
  end

  def show
    @spot = Spot.find(params[:id])
    @spot_user = SpotUser.new
    @spot_users = @spot.spot_users.includes(:user, :spot).order(created_at: :desc)
  end
end

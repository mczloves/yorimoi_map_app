class SpotsController < ApplicationController
  def index
    @spots = Spot.order(id: :asc)
  end

  def show
    @spot = Spot.find(params[:id])
  end
end

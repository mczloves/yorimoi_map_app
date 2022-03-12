class SpotsController < ApplicationController

  PER_PAGE = 12

  def index
    @spots = Spot.order(id: :asc).page(params[:page]).per(PER_PAGE)
  end

  def show
    @spot = Spot.find(params[:id])
  end

end
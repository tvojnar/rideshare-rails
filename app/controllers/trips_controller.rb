class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
  end # show

  def edit
    @trip = Trip.find(params[:id])
  end # edit
end

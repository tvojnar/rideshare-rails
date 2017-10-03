class PassengersController < ApplicationController
  def index
    @passengers = Passenger.all.order(:name)
  end

  def show
    @passenger = Passenger.find(params[:id])
  end
end

class PassengersController < ApplicationController
  def index
    @passengers = Passenger.all.order(:name)
  end

  def show
    @passenger = Passenger.find(params[:id])
  end

# TODO: add these methods in when I add create functionality
  # def create
  #   strong_params = passenger_params
  #   @passenger = Passenger.new(strong_params)
  # end
  #
  # private
  #   def passenger_params
  #     return params.require(:passenger).permit(:name, :phone_number)
  #   end

  # TODO: make edit use strong params too! 
end

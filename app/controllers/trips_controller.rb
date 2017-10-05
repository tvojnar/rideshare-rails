class TripsController < ApplicationController
  def index
    if params[:passenger_id]
      passenger = Passenger.find_by(id: params[:passenger_id])
      @trips = passenger.trips
    else
      @trips = Trip.all
    end # if/else
  end # index

    def show
      @trip = Trip.find(params[:id])
    end # show

    def new
      @trip = Trip.new
      if params[:passenger_id]
        @trip.passenger_id = params[:passenger_id]
      end
    end # new

    def create
      @trip = Trip.new(trip_params)
      @trip.cost = @trip.remove_decimal_from_cost

      if @trip.save
        # TODO: Should I change this to a nester rout?
        redirect_to passenger_path(@trip.passenger_id)
      else
        render :new
      end # if/else
    end # create

    def edit
      @trip = Trip.find(params[:id])
    end # edit

    def update
      @trip = Trip.find(params[:id])
      @trip.update_attributes(trip_params)
      # removes the decimal that the user entered in the form to update the cost
      @trip.cost = @trip.remove_decimal_from_cost

      if @trip.save
        # TODO: Should I change this to a nester rout?
        redirect_to passenger_path(@trip.passenger_id)
      else
        render :edit
      end # if/else
    end # update

    private
    def trip_params
      return params.require(:trip).permit(:driver_id, :passenger_id, :date, :rating, :cost)
    end # trip_params

  end

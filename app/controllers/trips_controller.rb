class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
  end # show

  def new
    @trip = Trip.new
  end # new

  def create
    @trip = Trip.new(trip_params)

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

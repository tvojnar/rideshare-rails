class Trip < ApplicationRecord
  belongs_to :driver
  belongs_to :passenger

  # def cost_in_dollars
  #   trip = trips.find(params[:id])
  #   return (trip.cost / 100).round(2)
  # end # cost_in_dollars
end

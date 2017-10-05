class Trip < ApplicationRecord

  belongs_to :driver
  belongs_to :passenger

  # TODO: make this method work later!
  # def cost_in_dollars
  #   trip = trips.find(params[:id])
  #   return (trip.cost / 100).round(2)
  # end # cost_in_dollars
  validates :rating, allow_blank: true
  validates_presence_of :driver
  validates_presence_of :passenger
  validates_presence_of :driver_id
  validates_presence_of :passenger_id
  validates_presence_of :date
  validates_presence_of :cost
  validates_inclusion_of :rating, :in => 0..5

end

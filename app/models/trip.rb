class Trip < ApplicationRecord
  validates_presence_of :driver
  validates_presence_of  :passenger
  validates_presence_of  :driver_id
  validates_presence_of :passenger_id
  validates_presence_of :date
  validates_presence_of  :rating
  validates_presence_of  :cost
  validates :rating, numericality: true
  validates_inclusion_of :rating, :in => 0..5
end

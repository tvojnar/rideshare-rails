class Passenger < ApplicationRecord
  has_many :trips
  # TODO: Add custom validation error messages
  validates :name, presence: true
  validates :phone_number, presence: true
end

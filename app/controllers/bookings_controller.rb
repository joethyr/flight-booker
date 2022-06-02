class BookingsController < ApplicationController
  belongs_to :flight
  has_many :passengers, through: :passenger_bookings
  has_many :passenger_bookings, dependent: :destroy

  def new
  end

end

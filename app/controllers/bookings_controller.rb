class BookingsController < ApplicationController
<<<<<<< HEAD
  belongs_to :flight
  has_many :passengers, through: :passenger_bookings
  has_many :passenger_bookings, dependent: :destroy

  def new
  end

=======
  def new
    @flight = Flight.find_by(id: params[:flight_id])
    @booking = Booking.new(flight: @flight)
    ticket = params[:ticket].to_i
    ticket.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_url(@booking), notice: 'Congratulations! Your flight booking is confirmed.'
    else
      render :new
    end
  end

  def show
    @booking = Booking.find_by(id: params[:id])
  end

  private

  def search_params
    params.permit(:depart_airport_id, :arrival_airport_id, :depart_time)
  end

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email, :date_of_birth, :phone])
  end
>>>>>>> develop
end

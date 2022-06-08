class BookingsController < ApplicationController
  def new
    @flight = Flight.find_by(id: params[:flight_id])
    @booking = Booking.new(flight: @flight)
    ticket = params[:ticket].to_i
    ticket.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)

    respond_to do |format|
      if @booking.save
        format.html { redirect_to booking_url(@booking), notice: "Booking was successfully created." }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
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
end

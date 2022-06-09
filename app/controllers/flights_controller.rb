class FlightsController < ApplicationController
  def index
    @available_flights = Flight.where(search_params) unless search_params.empty?
  end

  private

    # Use callbacks to share common setup or constraints between actions.
  def set_flight
    @flight = Flight.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def search_params
<<<<<<< HEAD
    params.require(:flight).permit(:depart_airport_id, :arrival_airport_id, :depart_time, :passenger_count)
=======
    params.permit(:depart_airport_id, :arrival_airport_id, :depart_time)
  end

  def flight_params
    params.require(:flight).permit(:depart_airport_id, :arrival_airport_id, :ticket, :depart_time, :flight_id)
>>>>>>> develop
  end
end

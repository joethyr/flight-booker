class FlightsController < ApplicationController

  def index
    # @airport_options = Airport.all.map { |i| [i.code, i.id] }

    @available_flights = Flight.where(flight_params) unless flight_params.empty?

    # @available_flights = Flight.where(depart_airport_id: params[:depart_airport_id], arrival_airport_id: params[:arrival_airport_id], depart_time: params[:depart_time])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_flight
    @flight = Flight.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def flight_params
    params.permit(:depart_airport_id, :arrival_airport_id, :depart_time)
  end
end

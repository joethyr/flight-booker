class FlightsController < ApplicationController

  def index
    @airport_options = Airport.all.map{|i| [i.code, i.id] }
    @flights = Flight.all
    @available_flights = Flight.where(depart_airport_id: params[:depart_airport_id], arrival_airport_id: params[:arrival_airport_id], depart_time: params[:depart_time])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_flight
    @flight = Flight.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def search_params
    params.require(:flight).permit(:depart_airport_id, :arrival_airport_id, :depart_time, :passenger_count)
  end
end

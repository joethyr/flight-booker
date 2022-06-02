class FlightsController < ApplicationController

  def index
    @airport_options = Airport.all.map{|i| [i.code, i.id] }
    @flights = Flight.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_flight
    @flight = Flight.find(params[:id])
  end
end

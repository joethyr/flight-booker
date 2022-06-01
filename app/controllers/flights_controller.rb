class FlightsController < ApplicationController
  def index
    @flights = Flight.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_flight
    @flight = Flight.find(params[:id])
  end
end

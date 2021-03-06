class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |a| [a.code, a.id] }
    @date_options = Flight.all.map { |f| [f.start_date.strftime('%B %d, %Y'), f.start_date.strftime('%Y%m%d')] }

    @flight_results = Flight.where start_id: query_params[:from_code], finish_id: query_params[:to_code]
    @booking = Booking.new
  end

  private

  def query_params
    params.permit :from_code, :to_code, :num_tickets, :date, :commit
  end
end

class FlightsController < ApplicationController
  def index
    # @flight = Flight.new
    @airport_options = Airport.all.map { |a| [a.code, a.id] }
    @date_options = Flight.all.map { |f| [f.start_date.strftime('%B %d, %Y'), f.start_date] }
  end
end

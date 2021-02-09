class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @num_passengers = booking_params[:num_passengers]
    @flight_id = booking_params[:flight_id]

    # @passengers = []
    # @num_passengers.to_i.times { @passengers << @booking.passengers.build }
    @num_passengers.to_i.times { @booking.passengers.build }
  end

  def create
    # @booking = Booking.new flight_id: passenger_params[:flight_id], num_passengers: passenger_params[:num_passengers]
    # @booking.passengers.build(passenger_params[:passengers_attributes])
    # passenger_params[:num_passengers].to_i.times do
    #   p @booking.passengers.build passenger_params[:passenger]
    # end
    @booking = Booking.new passenger_params
    if @booking.save
      redirect_to booking_path(@booking.id)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit :num_passengers, :flight_id
  end

  def passenger_params
    # params.require(:booking).permit :flight_id, :num_passengers, passenger: %i[name email flight_id]
    params.require(:booking).permit :flight_id, :num_passengers, passengers_attributes: %i[name email flight_id]
  end
end

class AddFlightIdToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :flight_id, :int
    add_column :bookings, :num_passengers, :int
  end
end

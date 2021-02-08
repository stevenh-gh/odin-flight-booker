class RemoveColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :passenger_id
    remove_column :passengers, :booking_id
  end
end

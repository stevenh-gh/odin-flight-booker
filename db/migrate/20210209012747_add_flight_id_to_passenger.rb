class AddFlightIdToPassenger < ActiveRecord::Migration[6.1]
  def change
    add_column :passengers, :flight_id, :int
  end
end

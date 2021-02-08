class CreateJoinTable < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :passenger_id, :int
    add_column :passengers, :booking_id, :int

    create_join_table :bookings, :passengers do |t|
      t.index :booking_id
      t.index :passenger_id
    end
  end
end

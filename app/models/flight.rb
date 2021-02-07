class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: 'Airport', foreign_key: 'start_id'
  belongs_to :to_airport, class_name: 'Airport', foreign_key: 'finish_id'

  has_many :bookings
  has_many :passengers

  def description
    %Q(Flight \##{id}:
       [ #{from_airport.code} → #{to_airport.code} ]
       [ Date: #{start_date.strftime('%B %d, %Y')} ]
       [ Time: #{start_date.strftime('%k:%M')} / #{start_date.strftime('%l:%M%P')} ]
       [ Flight duration: #{flight_duration} ])
  end
end

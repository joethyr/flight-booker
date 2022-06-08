class Flight < ApplicationRecord
  belongs_to :depart_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"
  has_many :bookings
  has_many :passengers, through: :bookings

  def formatted_date
    depart_time.strftime("%m/%d/%Y")
  end

end

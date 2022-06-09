class Passenger < ApplicationRecord
<<<<<<< HEAD
  validates :email, uniqueness: true

  has_many :flights, through: :bookings
  has_many :bookings, through: :passenger_bookings
  has_many :passenger_bookings, dependent: :destroy
=======
  belongs_to :booking
  validates :name, :email, :date_of_birth, :phone, presence: true
>>>>>>> develop
end

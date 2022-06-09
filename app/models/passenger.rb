class Passenger < ApplicationRecord
  belongs_to :booking
  validates :name, :email, :date_of_birth, :phone, presence: true
end

# Preview all emails at http://localhost:3000/rails/mailers/passenger_mailer
class PassengerMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/passenger_mailer/confirmation_email
  def confirmation_email
    PassengerMailer.with(booking_id: Booking.last.id).confirmation_email
  end

end

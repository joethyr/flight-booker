class PassengerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.passenger_mailer.confirmation_email.subject
  #
  def confirmation_email
    @booking = Booking.find(params[:booking_id])
    @url = booking_url(@booking)
    mail(to: @booking.passengers.pluck(:email),
         subject: "Flight #{@booking.flight_id} Booking Confirmation")
  end
end

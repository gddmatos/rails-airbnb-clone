class BookingsController < ApplicationController

  def create
    @booking = Booking.new
    @booking = Booking.create(booking_params)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end

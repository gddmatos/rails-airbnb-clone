class BookingsController < ApplicationController
  #before_action :authenticate_user!

  def new
    @booking = Booking.new
  end

  def create
    #@booking = Booking.create(booking_params)
    @booking = Booking.new(booking_params)
    @booking.chateau = @chateau
    @booking.user = @user

    if @booking.save
      redirect_to confirmation_url(@chateau)
    else
      render 'chateaus/:id'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end

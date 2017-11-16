class BookingsController < ApplicationController
  before_action :authenticate_user!

  def new
    @booking = Booking.new
  end

  def create
    @chateau = Chateau.find(params[:chateau_id])
    @booking = Booking.new(booking_params)
    @booking.chateau = @chateau
    @booking.user = current_user
    if @booking.save
      redirect_to booking_payment_path(@booking)
    else
      render 'chateaus/show'
    end
  end

  def payment
    @booking = Booking.find(params[:booking_id])
  end

  def confirmation
    @booking = Booking.find(params[:booking_id])
    @chateau = Chateau.find(@booking.chateau_id)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end

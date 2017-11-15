class BookingsController < ApplicationController
  #before_action :authenticate_user!

  def new
    @booking = Booking.new
  end

  def create
    @chateau = Chateau.find(params[:chateau_id])
    @booking = Booking.new(booking_params)
    @booking.chateau = @chateau
    @booking.user = current_user



    if @booking.save
      redirect_to confirmation_path(@chateau)


    else
      render 'chateaus/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end

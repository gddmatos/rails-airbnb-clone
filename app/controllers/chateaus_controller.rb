class ChateausController < ApplicationController
  def index
    @chateaus = Chateau.all
  end

  def show
    @booking = Booking.new
    @chateau = Chateau.find(params[:id])
  end
end

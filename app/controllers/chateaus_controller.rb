class ChateausController < ApplicationController
  def index
    @chateaus = Chateau.all
    @hash = Gmaps4rails.build_markers(@chateaus) do |chateau, marker|
      marker.lat chateau.latitude
      marker.lng chateau.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def show
    @booking = Booking.new
    @chateau = Chateau.find(params[:id])
    @hash = Gmaps4rails.build_markers(@chateau) do |chateau, marker|
      marker.lat chateau.latitude
      marker.lng chateau.longitude
  end
end
end

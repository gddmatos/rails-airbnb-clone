class ChateauController < ApplicationController

  def index
    @chateaus = Chateau.all
  end

  def show
    @chateau = Chateau.find(params[:id])
  end
end

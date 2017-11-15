class PagesController < ApplicationController
  def home
    @chateaus = Chateau.all
  end


end

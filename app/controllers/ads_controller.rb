class AdsController < ApplicationController
  def index
    @ads = Ad.all
    @genres = Genre.all
  end

  def show
    @ad = Ad.find(params[:id])
    @genres = Genre.all
  end

  def genre_serch
  end

  def favorite_serch
  end

  def apply
  end
end

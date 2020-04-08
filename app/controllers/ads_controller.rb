class AdsController < ApplicationController
  def index
    @ads = Ad.all
    @genres = Genre.all
  end
  def show
    @ad = Ad.find(params[:id])
    @genres = Genre.all
  end

  def genre_search
    @ads = Ad.where(genre_id: params[:id])
    @genres = Genre.all
    @genre = Genre.find(params[:id])
  end

  def favorite_serch
     @genres = Genre.all
     @ads = current_driver.favorites.ad.all
  end

  def apply
  end
end

class AdsController < ApplicationController
  def index
    @ads = Ad.all
    @genres = Genre.all
    @driver = current_driver
    @ad_client = current_ad_client
  end
  def show
    @ad = Ad.find(params[:id])
    @genres = Genre.all
    @driver = current_driver
    @ad_client = current_ad_client
    @under_deal = UnderDeal.new
  end

  def genre_search
    @ads = Ad.where(genre_id: params[:id])
    @genres = Genre.all
    @genre = Genre.find(params[:id])
  end

  def favorite_search
     @genres = Genre.all
     @driver = current_driver
     @favorited_ads = Ad.joins(:favorites).where(favorites: { driver: @driver })
  end

  def apply
  end
end

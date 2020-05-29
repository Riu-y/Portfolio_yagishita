class AdsController < ApplicationController
  # 広告一覧画面
  def index
    @ads = Ad.page(params[:page]).per(9)
    @genres = Genre.all
    @driver = current_driver
    @ad_client = current_ad_client
  end

  # 広告詳細画面
  def show
    @ad = Ad.includes(:genre,:ad_client).find(params[:id])
    @genres = Genre.all
    @driver = current_driver
    @ad_client = current_ad_client
    @under_deal = UnderDeal.new
    @room = Room.find_by(ad_id: @ad.id,driver_id: current_driver.id)
  end

  # ジャンル検索画面
  def genre_search
    ads = Ad.where(genre_id: params[:id])
    @ads = ads.page(params[:page]).per(9)
    @genres = Genre.all
    @genre = Genre.find(params[:id])
  end

  # お気に入り広告の検索画面
  def favorite_search
     @genres = Genre.all
     @driver = current_driver
     ads = Ad.joins(:favorites).where(favorites: { driver: @driver })
     @ads = ads.page(params[:page]).per(9)
  end

end

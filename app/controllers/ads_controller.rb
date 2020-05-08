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
  end

  # ジャンル検索画面
  def genre_search
    @ads = Ad.where(genre_id: params[:id])
    @genres = Genre.all
    @genre = Genre.find(params[:id])
  end

  # お気に入り広告の検索画面
  def favorite_search
     @genres = Genre.all
     @driver = current_driver
     @favorited_ads = Ad.joins(:favorites).where(favorites: { driver: @driver })
  end

end

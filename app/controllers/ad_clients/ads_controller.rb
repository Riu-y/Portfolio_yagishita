class AdClients::AdsController < ApplicationController
  
  def index
    ad_client = current_ad_client
    @ads = ad_client.ads.page(params[:page]).per(9)
    @genres = Genre.all
  end

  def new
    @ad = Ad.new
   end

  def create
    @ad = Ad.new(ad_params)
    @ad.ad_client_id = current_ad_client.id
    if @ad.save
      tags = Vision.get_image_data(@ad.ad_image)
      tags.each do |tag|
        @ad.tags.create(name: tag)
      end
      redirect_to ad_client_ad_path(@ad.ad_client_id,@ad.id)
    else
      render 'new'
    end
  end

  def show
    @ad = Ad.find(params[:id])
  end

  def edit
   	@ad = Ad.find(params[:id])
  end

  def update
   	@ad = Ad.find(params[:id])
   	@ad.update(ad_params)
   	redirect_to ad_client_ads_path
  end


  private
  def ad_params
    params.require(:ad).permit(:ad_client_id,:genre_id, :title, :ad_image, :ad_fee, :is_active, :start_date,:end_date,:heading,:content)
  end
end



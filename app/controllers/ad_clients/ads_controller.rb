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
      redirect_to ad_client_ads_path
    else
      render 'new'
    end
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
    params.require(:ad).permit(:ad_client_id,:genre_id, :title, :ad_image, :ad_fee, :is_active, :ad_priod,:heading,:content)
  end
end



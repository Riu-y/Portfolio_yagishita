class AdClientsController < ApplicationController

  def dashboard
    @ad_client = current_ad_client
  end

  def index
    @ad_client = current_ad_client
    @driver = current_driver
    @ad_clients = AdClient.all
  end

  def show
  	@ad_client = AdClient.find(params[:id])
  end

  def edit
  	@ad_client = AdClient.find(params[:id])
  end

  def update
  	@ad_client = AdClient.find(params[:id])
  	if @ad_client.update(ad_client_params)
  		redirect_to ad_clients_root_path(@ad_client)
  	else
  		render :edit
  	end
  end

  def followings
    @ad_client = AdClient.find(params[:id])
    @followings = @ad_client.following_driver
  end

  private
  def ad_client_params
  	params.require(:ad_client).permit(:company_name, :company_name_kana, :ceo_name, :ceo_name_kana, :postal_code, :address, :telephone_number, :profile_image, :registry_image_id)
  end
end
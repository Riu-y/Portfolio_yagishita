class DriversController < ApplicationController

  def index
    @ad_client = current_ad_client
    @drivers = Driver.all
  end

  def show
  	@driver = Driver.find(params[:id])
    @genres = Genre.all
    @car_informations = @driver.car_informations
    @ad_client = current_ad_client
  end

  def edit
  	@driver = Driver.find(params[:id])
  end

  def update
  	@driver = Driver.find(params[:id])
  	if @driver.update(driver_params)
  		redirect_back(fallback_location: edit_driver_path)
  	else
  		render :edit
  	end
  end

  def followings
    @driver = Driver.find(params[:id])
    @following = @driver.following_ad_clients
  end

  def followers
    @driver = Driver.find(params[:id])
    @ad_clients= @driver.follower_ad_clients
  end

  private
  def driver_params
  	params.require(:driver).permit(:driver_name,:driver_name_kana, :profile_image, :postal_code, :address, :telephone_number)
  end
end

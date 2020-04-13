class DriversController < ApplicationController
  before_action :authenticate_driver!, only:[:dashboard]

  def dashboard
    @driver = current_driver
    @genres = Genre.all
    @car_informations = @driver.car_informations
    ad_client = current_ad_client
  end

  def index
    @ad_client = current_ad_client
    @driver = current_driver
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
    @followings = @driver.following_ad_client
  end

  def followers
    @driver = Driver.find(params[:id])
    @followers = @driver.follower_ad_client
  end

  private
  def driver_params
  	params.require(:driver).permit(:driver_name,:driver_name_kana, :profile_image, :postal_code, :address, :telephone_number)
  end
end

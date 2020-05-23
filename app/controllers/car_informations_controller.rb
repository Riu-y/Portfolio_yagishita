class CarInformationsController < ApplicationController
  before_action :authenticate_driver!
  #口座情報一覧ページ
  def index
  	@car_information = CarInformation.new
  	@car_informations = current_driver.car_informations
  end
  #口座情報登録
  def create
  	@car_information = CarInformation.new(car_information_params)
  	@car_information.driver_id = current_driver.id
  	if @car_information.save
  		redirect_back(fallback_location: edit_driver_path(current_driver))
  	else
  	 @car_informations = current_driver.car_informations
  		render 'index'
  	end
  end
  #口座情報編集
  def edit
  	@car_information = CarInformation.find(params[:id])
  end
  #口座情報更新
  def update
  	@car_information = CarInformation.find(params[:id])
  	if @car_information.update(car_information_params)
  		redirect_to driver_car_informations_path
  	else
  		@car_information = CarInformation.find(params[:id])
  		redirect_back(fallback_location: edit_driver_path(current_driver))
  	end
  end
  #口座情報削除
  def destroy
  	@car_information = CarInformation.find(params[:id])
  	if @car_information.destroy
  		redirect_back(fallback_location: edit_driver_path(current_driver))
  	else
  		render 'index'
  	end
  end

  private
  def car_information_params
    params.require(:car_information).permit(:driver_id,:manufacturer_name, :car_name, :certificate_image, :flame_number, :license_plate)
  end
end

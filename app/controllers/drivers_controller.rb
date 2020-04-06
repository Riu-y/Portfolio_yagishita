class DriversController < ApplicationController
  def show
  	@driver = current_driver
  end

  def edit
  	@driver = Driver.find(params[:id])
  end

  def update
  	@driver = Driver.find(params[:id])
  	if @driver.update(driver_params)
  		redirect_to drivers_root_path(@driver)
  	else
  		render :edit
  	end
  end

  private
  def driver_params
  	params.require(:driver).permit(:driver_name,:driver_name_kana, :profile_image, :postal_code, :address, :telephone_number)
  end
end

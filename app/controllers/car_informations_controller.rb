class CarInformationsController < ApplicationController
  def index
  end

  def edit
  end

  private
  def car_information_params
    params.require(:car_information).permit(:manufacturer_name,:car_name,:certificate_image)
  end
end

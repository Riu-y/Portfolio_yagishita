class TransferInformationsController < ApplicationController
  def index
  	@transfer_informations = current_driver.transfer_informations
  	@transfer_information = TransferInformation.new
  end
  def create
  	@transfer_information = TransferInformation.new(transfer_information_params)
  	@transfer_information.driver_id = current_driver.id
	  	if @transfer_information.save
	  		redirect_back(fallback_location: driver_dashboard_path)
	  	else
	  		@transfer_information = current_driver.transfer_informations
	  		render 'index'
	  	end
  end

  def edit
  	@transfer_information = TransferInformation.find(params[:id])
  	@driver = current_driver
  end

  def update
  	@transfer_information = TransferInformation.find(params[:id])
  	@driver = current_driver
	  	if @transfer_information.update(transfer_information_params)
	  		redirect_to driver_transfer_informations_path
	  	else
	  		@transfer_information = TransferInformation.find(params[:id])
	  		redirect_back(fallback_location: driver_dashboard_path)
	  	end
  end

  def destroy
  	@transfer_information = TransferInformation.find(params[:id])
  	@transfer_information.destroy
  	redirect_back(fallback_location: driver_dashboard_path)
  end

  private
  def transfer_information_params
  	params.require(:transfer_information).permit(:driver_id, :bank_name, :branch_name, :account_type,:account_number,:account_name)
  end
end

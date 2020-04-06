class Drivers::TransferInformationsController < ApplicationController
  def index
  	@transfer_informations = current_driver.transfer_infomarions
  	@transfer_information = TransferInformation.new

  end

  def edit
  end

  private
  def transfer_information_params
  	params.require(:transfer_information).permit(:driver_id, :bank_name, :branch_name, :account_type,:account_number,:account_name)
end

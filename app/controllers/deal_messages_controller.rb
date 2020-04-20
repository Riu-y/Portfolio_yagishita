class DealMessagesController < ApplicationController

	def create
		@under_deal = UnderDeal.find(params[:under_deal_id])
		@message = DealMessage.new(message_params)
		if driver_signed_in?
			@message.user_type = 'driver'
		elsif ad_client_signed_in?
			@message.user_type = 'ad_client'
		end
		@message.under_deal_id = @under_deal.id
		@message.save
		redirect_back(fallback_location: under_deal_path(@under_deal))
	end

	private
	def message_params
		params.require(:deal_message).permit(:message, :user_type, :under_deal_id)
	end
end

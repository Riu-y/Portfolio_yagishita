class RoomsController < ApplicationController
	#広告質問用チャット機能
	#Action Cableにて実装
	def index
		@ad = Ad.find(params[:ad_id])
		@rooms = Room.joins(:driver, :ad).where(ad_id: @ad.id, ad_client_id: current_ad_client.id)
	end

	def show
		@ad = Ad.includes(:ad_client).find(params[:ad_id])
		gon.ad_client_name = @ad.ad_client.company_name
		@driver = Room.includes(:driver).find(params[:id])
		gon.driver_name = @driver.driver.driver_name
		gon.driver_profile_image = @driver.driver.profile_image_id
		if driver_signed_in?
			@room = Room.find_by(ad_id: @ad.id,driver_id: current_driver.id)
				if @room.nil?
					@room = Room.create(ad_id: @ad.id, driver_id: current_driver.id, ad_client_id: @ad.ad_client_id)
				end
		elsif ad_client_signed_in?
			@room = Room.find_by(ad_id: @ad.id,ad_client_id: current_ad_client.id)
		end
		@chats = @room.chats.order("id DESC")
		@chat = Chat.new(room_id: @room.id)
	end
end




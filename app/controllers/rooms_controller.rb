class RoomsController < ApplicationController
	#広告質問用チャット機能
	#Action Cableにて実装
	def index
		@ad = Ad.find(params[:ad_id])
		@rooms = Room.joins(:driver, :ad).where(ad_id: @ad.id, ad_client_id: current_ad_client.id)
	end

	def show
		@ad = Ad.includes(:ad_client).find(params[:ad_id])
		@driver = Room.includes(:driver).find(params[:id])
		if driver_signed_in?
			@room = Room.find_by(ad_id: @ad.id,driver_id: @driver.driver.id)
		else
			@room = Room.find_by(ad_id: @ad.id,driver_id: @driver.driver.id, ad_client_id: current_ad_client.id)
		end

		@chats = @room.chats.order("id DESC")

		@chat = Chat.new(room_id: @room.id)
	end

	def create
		@ad = Ad.find(params[:ad_id])
		@room = Room.create(ad_id: @ad.id, driver_id: current_driver.id, ad_client_id: @ad.ad_client_id)
		redirect_to ad_room_path(@ad.id,@room.id)
	end
end




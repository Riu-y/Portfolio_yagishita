class ChatsController < ApplicationController
	def index
		@ad = Ad.find(params[:ad_id])
		room = Room.find_by(ad_id: @ad.id,driver_id: current_driver.id)
			if room.nil?
				room = Room.create(ad_id: @ad.id, driver_id: current_driver.id, ad_client_id: @ad.ad_client_id)
			end
		end
		@chats = room.chats
		@chat = Chat.new(room_id: room.id)
	end

	def create
		@chat = Chat.new(chat_params)
		@chat.save
		redirect_to ad_chats_path(params[:ad_id])
	end

	private
	def chat_params
		params.require(:chat).permit(:room_id, :user_type, :message)
	end
end




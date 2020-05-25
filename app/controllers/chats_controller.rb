class ChatsController < ApplicationController
	#取引広告用のメッセージ機能
	#こちらはAjaxにて非同期化
	def index
		@ad = Ad.includes(:ad_client).find(params[:ad_id])
		room = Room.find_by(ad_id: @ad.id,driver_id: current_driver.id)
			if room.nil?
				room = Room.create(ad_id: @ad.id, driver_id: current_driver.id, ad_client_id: @ad.ad_client_id)
			end
		@chats = room.chats.order("id DESC")
			# respond_to do |format|
			# 	format.html
			# 	format.json { @new_chat = Chat.where('id > ?', params[:chat][:id]) }
			# end
		@chat = Chat.new(room_id: room.id)
	end

	def create
		@chat = Chat.new(chat_params)
		@chat.save
		# binding.pry
		redirect_back(fallback_location: root_path)
	end


	private
	def chat_params
		params.require(:chat).permit(:room_id, :user_type, :message)
	end
end

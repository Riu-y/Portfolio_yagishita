class RoomsController < ApplicationController
	#広告質問用 チャット
	def index
		@ad = Ad.find(params[:ad_id])
		@rooms = Room.joins(:driver, :ad).where(ad_id: @ad.id, ad_client_id: current_ad_client.id)
	end

	def show
		@ad = Room.includes(ad: [:ad_client, :genre]).find(params[:id])
		@room = Room.includes(:driver).find(params[:id])
		@ad_client = current_ad_client
		@chats =@room.chats.order("id DESC")
		@chat = Chat.new(room_id: @room.id)
	end

	def create
		@chat = Chat.new(chat_params)
		@chat.save
	end

	private
	def chat_params
		params.require(:chat).permit(:room_id, :user_type, :message)
	end
end




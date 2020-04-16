class RoomsController < ApplicationController
  def index
		@ad = Ad.find(params[:ad_id])
		@rooms = Room.joins(:driver, :ad).where(ad_id: @ad.id, ad_client_id: current_ad_client.id)
	end

	def show
		@ad = Room.joins(:ad).find(params[:id])
		@room = Room.find(params[:id])
		@chats =@room.chats
		@chat = Chat.new(room_id: @room.id)
	end


	def create
		@chat = Chat.new(chat_params)
		@chat.save
		redirect_to ad_room_path(params[:ad_id],params[:room_id])
	end

	private
	def chat_params
		params.require(:chat).permit(:room_id, :user_type, :message)
	end
end




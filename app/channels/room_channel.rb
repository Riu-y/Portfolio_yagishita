class RoomChannel < ApplicationCable::Channel
  def subscribed
  	stream_from "room_channel_#{params[:room_id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(message)
  	chat = Chat.new(message: message['message'][0],user_type: message['message'][1].to_i,room_id: message['message'][2].to_i)
		chat.save
		ActionCable.server.broadcast "room_channel_#{message['message'][2].to_i}", message: message['message'][0], user_type: message['message'][1], created_at: chat.created_at.to_s(:datetime_jp)
  end
end


class RoomChannel < ApplicationCable::Channel
  def subscribed
  	stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(message)
  	chat = Chat.new(message: message['message'][0],user_type: message['message'][1].to_i,room_id: message['message'][2].to_i)
		chat.save
		ActionCable.server.broadcast 'room_channel', message: message['message'][0], user_type: message['message'][1]
  end
end


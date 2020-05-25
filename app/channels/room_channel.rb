class RoomChannel < ApplicationCable::Channel
  def subscribed
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
  	Message.create!(message: data['message'])
  	ActionCable.server.broadcast 'room_channel',data['message']
  end
end

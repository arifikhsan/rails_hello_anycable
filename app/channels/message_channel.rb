class MessageChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
     stream_from "message_channel"
 end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    Rails.logger.debug "Received data: #{data.inspect}"
    ActionCable.server.broadcast("message_channel", data["message"])
  end

  def receive(data)
    Rails.logger.debug "Received data: #{data.inspect}"
    # This method is invoked when a message is received from the client
    ActionCable.server.broadcast("message_channel", data['message'])
  end
end

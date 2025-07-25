class MessageChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
     stream_from "message_channel"
 end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    ActionCable.server.broadcast("message_channel", data.except("action"))
  end
end

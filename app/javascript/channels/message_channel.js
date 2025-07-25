import consumer from "channels/consumer";

consumer.subscriptions.create("MessageChannel", {
  connected() {
    console.log("Connected to MessageChannel");
  },

  disconnected() {
    console.log("Disconnected from MessageChannel");
  },

  received(data) {
    console.log("📩 Received from MessageChannel:", data);
  },
});

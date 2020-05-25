App.room = App.cable.subscriptions.create("RoomChannel", {
  connected: function() {
    console.log('connected')
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    alert(data)
  },

  speak: function(message) {
    return this.perform('speak', {message:"message"});
  }
});

$ ->
  App.room = App.cable.subscriptions.create { channel: "RoomChannel", room_id: $("input[name='chat']").data("room") },
    connected: ->
      # Called when the subscription is ready for use on the server

    disconnected: ->
      # Called when the subscription has been terminated by the server

    received: (data) ->
      # Called when there's incoming data on the websocket for this channel'
      if data["user_type"] == "0"
     	  $('#chats').prepend("<span class='says'>"+"#{gon.driver_name}<br>"+data["message"]+"<br>"+data["created_at"]+"</span><br>");
      else
        $('#chats').prepend("<span class='says2'>"+"広告主<br>"+data["message"]+"</span><br>");

    speak: (message) ->
      @perform 'speak', message: message

jQuery(document).on 'keypress', '[data-behavior~=room_speaker]', (event) ->
  if event.keyCode is 13
    App.room.speak [event.target.value, $('[data-user]').attr('data-user'), $('[data-room]').attr('data-room')]
    event.target.value = ''
    event.preventDefault()

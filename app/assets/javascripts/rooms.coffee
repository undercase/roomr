ready = ->
  dispatcher = new WebSocketRails("roomrapp-undercase.rhcloud.com/websocket")

  channel = dispatcher.subscribe('speeches')

  channel.bind 'new_speech', (message) ->
    console.log("Recieved message #{message}")
    if $("#room_id").attr("value") == message.to_s
      html = "<a class='ui card' href='#{message.url}'>\
      <div class='ui image'>\
      <img src='/assets/word_icon.png' alt='Word icon'>\
      </div>\
      <div class='content'>\
      <div class='center aligned header'>#{message.name}</div>\
      </div\
      </a>"
      $(".speeches").append

  $(".speech.file").on "change", ->
    $(".upload.form").submit()

$(document).ready(ready)
$(document).on('page:load', ready)

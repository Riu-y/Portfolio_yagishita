$(function(){
	function buildCHAT(chat) {
		var chat = $('chat-area').append( '<span class="chats" data-id=' + chat.id + chat.message + chat.created_at.to_s(:datetime_jp))
	}
	$(function(){
		setInterval(update, 10000);
	});

	function update(){
		if($('.chats')[0]{
			var chat_id = $('.chats:last').data('id');
		} else {
			var chat_id = 0
		}
		$.ajax({
			url: location.href
			type: 'GET'
			data: {
				chat: { id: chat_id }
			},
			dataType: 'json'
		})
		.always(function(data){
			$.each(data, function(i, data){
				buildCHAT(data);
				// #ここCHATで平気？
			});
		});
	}
});
module MessagesHelper
	def list_messages(all_messages, sent)
		messages = []
		all_messages.each do |message|
			message_condition = sent ? (message.sender_id == current_user.id) : (message.recipient_id == current_user.id)
			messages << message if message_condition
		end
		messages  
	end
end

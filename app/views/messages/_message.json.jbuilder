json.extract! message, :id, :subject, :body, :sender_id, :recipient_id, :read, :money, :created_at, :updated_at
json.url message_url(message, format: :json)

class Message < ActiveRecord::Base
  belongs_to :sender, :foreign_key => :sender_id, class_name: User
  belongs_to :recipient, :foreign_key => :recipient_id, class_name: User

  validates :recipient_id, presence: true
  validates :subject, presence: true
  validates :body, presence: true
  validates :money, numericality: true
end
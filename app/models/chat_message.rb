class ChatMessage < ApplicationRecord
	belongs_to :user
	belongs_to :room
	validates :body, presence: true, length: { in: 1..75 }
end

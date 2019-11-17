class Contact < ApplicationRecord
	validates :email, presence: true, length: {maximum:255},
                    format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i} #エラーメッセージが重複するのを防ぐ
  validates :message, presence: true
end

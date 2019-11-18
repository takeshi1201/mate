class CategoryUser < ApplicationRecord
	belongs_to :user
	belongs_to :category
	# attachment :profile_image
end

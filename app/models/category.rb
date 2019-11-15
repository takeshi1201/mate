class Category < ApplicationRecord

	has_many :category_users, dependent: :destroy
    has_many :categories, :through => :category_users
    mount_uploader :category_image, CategoryImageUploader
end
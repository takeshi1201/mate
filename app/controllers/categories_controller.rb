class CategoriesController < ApplicationController

	def show
		@category_users = Category.find(params[:id]).category_users.order("RANDOM()").all
		@category = Category.find(params[:id])
		# @category_users = @category.category_users
	end

end

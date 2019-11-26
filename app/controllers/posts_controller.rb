class PostsController < ApplicationController

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		@post.user_id = current_user.id
	 if @post.save
		  redirect_to posts_path
	 else
	 	render 'new'
	 end
	end

	def show
		# binding.pry
		@post = Post.find(params[:id])
	end

	def index
		@posts = Post.page(params[:page]).reverse_order
	end

	def destroy
		post = Post.find(params[:id])
		post.destroy
		redirect_to user_path(current_user)
	end

	def search
    	@posts = Post.search(params[:search])
    end

	private
	def post_params
		params.require(:post).permit(:comment, :post_image, :hashtag_name)
	end

end

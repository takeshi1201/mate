class PostsController < ApplicationController

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		@post.user_id = current_user.id
		@post.save
		redirect_to posts_path
	end

	def show
		# binding.pry
		@post = Post.find(params[:id])
	end

	def index
		@posts = Post.all.order(created_at: :desc)
	end

	def search
    	@posts = Post.search(params[:search])
    end

	private
	def post_params
		params.require(:post).permit(:comment, :post_image, :hashtag_name)
	end

end

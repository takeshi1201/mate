class Admins::UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
    @posts = @user.posts
  end

  def destroy
  	@user = User.find(params[:id])
  	@user.destroy
  	redirect_to admins_posts_path
  end

  private
  def user_params
    params.require(:user).permit(:profile_image_id, :profession, :user_name, :user_age, :profile_comment)
  end
end

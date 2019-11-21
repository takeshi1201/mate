class UsersController < ApplicationController
  before_action :authenticate_user!, :only => [:show]
  def show
  	@user = User.find(params[:id])
    @category_users = @user.category_users
    @posts = @user.posts
    @currentUserEntry = Entry.where(user_id: current_user.id)  #entryの中のuser_idにログインしているユーザを入れる
    @userEntry = Entry.where(user_id: @user.id) #entryの中のuser_idに他のユーザを入れる
    if @user.id == current_user.id #もし他のユーザとログインユーザが合致すれば。。次のelseに。
    else
      @currentUserEntry.each do |cu|
        @userEntry.each do |u|
          if cu.room_id == u.room_id then #then真ならば処理
            @isRoom = true
            @roomId = cu.room_id
          end
        end
      end
      if @isRoom
      else
        @room = Room.new
        @entry = Entry.new
      end
    end
  end

  def edit
  	@user = User.find(params[:id])
    @user.category_users.build
  end

  def update
  	@user = User.find(params[:id])
   if @user.update(user_params)
    #binding.pry
  	  redirect_to user_path(@user.id)
   else
     #binding.pry
      render 'edit'
      #ßredirect_to edit_user_path(@user.id)
   end
  end

  def edit_profile
  	@user_profile = User.find(params[:id])
  end

  def update_profile
    @user_profile = User.find(params[:id])
    if @user_profile.update(user_params)
       redirect_to edit_profile_path(@user_profile.id)
    else
      render 'edit_profile'
    end
  end

  def follows
    @user = User.find(params[:id])
    @users = @user.followings
  end

  def followers
    @user = User.find(params[:id])
    @users = @user.followers
  end

  private
	def user_params
	    params.require(:user).permit(:user_name, :profile_image, :profession, :user_age, :profile_comment, :email, :address, { :category_ids=> []})
	end
end

class RoomsController < ApplicationController
	before_action :authenticate_user!
  def create
    @room = Room.create
    @entry1 = Entry.create(:room_id => @room.id, :user_id => current_user.id) #ログインユーザー側
    @entry2 = Entry.create(params.require(:entry).permit(:user_id, :room_id).merge(:room_id => @room.id)) #他のユーザ　マージで入れる
    redirect_to "/rooms/#{@room.id}"
  end

  def show
    @room = Room.find(params[:id])
    if Entry.where(:user_id => current_user.id, :room_id => @room.id).present?
      @messages = @room.chat_messages  #?
      @message = ChatMessage.new
      @entries = @room.entries #?
    else
      redirect_back(fallback_location: tops_path(current_user))
    end
  end
end

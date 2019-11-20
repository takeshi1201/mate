class ChatMessagesController < ApplicationController
	before_action :authenticate_user!, :only => [:create]

  def create
    if Entry.where(:user_id => current_user.id, :room_id => params[:chat_message][:room_id]).present?
      @message = ChatMessage.create(params.require(:chat_message).permit(:user_id, :body, :room_id).merge(:user_id => current_user.id))
      redirect_to "/rooms/#{@message.room_id}"
    else
      redirect_back(fallback_location: tops_path(current_user))
    end
  end

  def index
  end

end

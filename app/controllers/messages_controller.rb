class ListingsController < ApplicationController

  def new
    @message = Message.new
    @user = current_user.following
    @users = User.all
  end

  def create
    @message = current_user.messages.build(message_params)

    if @message.save
      flash[:success] = "Message Sent!"
      redirect_to messages_path
    else
      flash[:notice] = "Oops!"
      render 'new'
    end
  end

  def index
    @user = User.find(current_user)
    @messages = Recipient.where(:user_id => @user).order("created_at DESC")
  end

  private

    def message_params
      params.require(:message).permit(:body, :sender_id, user_tokens: [])
    end
    
end

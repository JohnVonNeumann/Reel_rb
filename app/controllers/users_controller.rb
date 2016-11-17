class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to Reel! Your Number One Fishing Destination Finder!"
      redirect_to @user
      # note that we've written redirect_to @user where we could have used
      # redirect_to user_url(@user), this is because rails automaticaly
      # infers from redirect_to @user that we want to redirect to user_url(@user)
      #handle a succesful save
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end

class UsersController < ApplicationController
  # forces certain actions to perform a private method before contiuing on
  # their own functional path
  before_action :set_user,       only: [:show, :edit, :update]
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy

  # GET /users
  def index
    @users = User.paginate(page: params[:page])
  end

  # GET /users/1
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # PATCH/PUT /users/1
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      #logs in a user upon signup
      flash[:success] = "Welcome to Reel! Your Number One Fishing Destination Finder!"
      redirect_to @user
      # note that we've written redirect_to @user where we could have used
      # redirect_to user_url(@user), this is because rails automaticaly
      # infers from redirect_to @user that we want to redirect to user_url(@user)
      # handle a succesful save
    else
      render 'new'
    end
  end

  # GET /products/1/edit
  def edit
  end

  # PATCH/PUT /products/1
  def update
    if @user.update_attributes(user_params)
      # handle a succesful update
      flash[:success] = "Profile Updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  # DELETE /products/1
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  private

    # incorporated this private method after seeing it's obvious beneficial usage
    # in Agile Web Dev for Rails 5, applies to all methods as a setup style method
    # to simplify the process and enforce DRY
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    #confirms a user is logged in, disables certain actions should they not
    def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    #confirms the correct user
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    #confirms an admin user
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end

end

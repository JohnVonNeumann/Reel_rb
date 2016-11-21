module SessionsHelper

  # logs in the given user
  # this module and associated methods will be called upon in our Application
  # controller to help (note the use of Helper) to login users, this is based
  # around cookies
  def log_in(user)
    session[:user_id] = user.id
  end

  # returns true if the given user is the current user
  def current_user?(user)
    user == current_user
  end

  # returns the current logged-in user (if any)
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  #returns true if the user is logged in, false otherwise
  def logged_in?
    !current_user.nil?
  end

# logs out the current user
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

end

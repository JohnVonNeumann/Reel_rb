class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def welcome
    render html: "Welcome to Reel! The best location to find the perfect fishing trip!"
  end
  
end

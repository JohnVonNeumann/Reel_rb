class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  # Conveniently, a Sessions helper module was generated automatically when
  # generating the Sessions controller (Section 8.1.1). Moreover, such helpers
  # are automatically included in Rails views; by including the module into the
  # base class of all controllers (the Application controller), we arrange to
  # make them available in our controllers as well (Listing 8.13).3

  def welcome
    render html: "Welcome to Reel! The best location to find the perfect fishing trip!"
  end

end

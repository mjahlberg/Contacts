class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
  	@current_user ||= User.where(id: session[:user_id]).first
  	# user needs to be capitalized otherwise it would searching for global variable, it can find the model though which is "User"
  	# ||= is memoization
  end

end

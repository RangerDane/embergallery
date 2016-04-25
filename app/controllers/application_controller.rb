class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    return @current_user if @current_user
    if session[:session_token]
      sesh = Session.find_by_token( session[:session_token] )
      @current_user = sesh && sesh.user ? sesh.user : nil
    else
      @current_user = nil
    end
  end
end

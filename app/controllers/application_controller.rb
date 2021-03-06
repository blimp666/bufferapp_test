class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_user=(user)
    if user
      session[:user_id] = user.id.to_s
      @current_user = user
    else
      session[:user_id] = nil
      @current_user = nil
    end
  end
end

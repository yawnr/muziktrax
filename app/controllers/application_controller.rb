class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  def login_user!(user)
    session[:session_token] = user.reset_session_token!
  end

  def logout_user!(user)
    user.reset_session_token!
    session[:session_token] = nil
  end

end

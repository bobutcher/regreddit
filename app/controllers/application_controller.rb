class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate!
    redirect_to(login_path) unless current_user
  end

  def current_user
    @user ||= User.find_by(id: session[:user_id])
  end

  helper_method :current_user
end

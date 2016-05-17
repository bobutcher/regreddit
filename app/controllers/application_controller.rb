class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate!
    redirect_to(login_path) unless current_user
  end

  def current_user
  
  end
end

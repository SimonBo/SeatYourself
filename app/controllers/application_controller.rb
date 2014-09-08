class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :get_user_ip

  def get_user_ip
    current_user.ip_address = "76.10.128.136"
    current_user.latitude = 43.8566
    current_user.longitude = -79.5111
    current_user.save
  end
end

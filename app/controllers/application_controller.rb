class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :get_cookie_values

  def get_cookie_values
    @latitude = cookies[:latitude]
    @longitude = cookies[:longitude]
  end
end

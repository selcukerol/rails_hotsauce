class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  before_filter :configure_permitted_parameters, if: :devise_controller?
# Customs Fields for Signup and Edit user.
  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys:[:name_first, :name_last, :username])
  	devise_parameter_sanitizer.permit(:account_update, keys:[:name_first, :name_last, :username])
  end

  protect_from_forgery with: :exception
  end




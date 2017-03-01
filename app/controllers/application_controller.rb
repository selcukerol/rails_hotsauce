class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  before_filter :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys:[:name_first, :name_last, :username])
  end

  def after_sign_in_path_for(resource_or_scope)
  # your_path
  end

  protect_from_forgery with: :exception
  end

  private 

  def after_sign_out_path_for(resource)
    request.referrer || root_path
  end



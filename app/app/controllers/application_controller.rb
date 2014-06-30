class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Require authentication
  before_filter :authenticate_user!, :except => ["login"]

  # Devise
  before_filter :update_sanitized_params, if: :devise_controller?

  def update_sanitized_params
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:username, :password, :password_confirmation, :first_name, :last_name, :email, :teacher, :group_list)}
  end
end

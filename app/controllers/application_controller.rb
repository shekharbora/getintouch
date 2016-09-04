class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  
  protected
  
    def configure_permitted_parameters
        devise_parameter_sanitizer.for(:sign_in) << :password_confirmation << :firstname  << :lastname
        devise_parameter_sanitizer.for(:account_update) << :firstname << :lastname
        devise_parameter_sanitizer.permit(:account_update, keys: [:firstname, :lastname])
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username,:password,:password_confirmation,:firstname, :lastname])
    end
end

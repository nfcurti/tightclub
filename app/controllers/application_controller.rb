class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters,if: :devise_controller?
	  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :address1,:address2,:state,:country,:city,:zip])
 	devise_parameter_sanitizer.permit(:account_update, keys: [:email, :address1,:address2,:state,:country,:city,:zip])
  end
end

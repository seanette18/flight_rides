class ApplicationController < ActionController::Base
  before_action :authenticate_rider!

  

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:best_method_of_contact, :name, :username])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:best_method_of_contact, :name, :username])
  end
end

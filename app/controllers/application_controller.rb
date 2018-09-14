class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :config_permitted_params, if: :devise_controller?

  protected
  def config_permitted_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email])
  end
end

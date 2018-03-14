class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user|
      user.permit(:email, :password, :password_confirmation, 
                  :address, :phone_number)
    end
  end

  private
  
  def set_locale
    cookies[:locale] = I18n.default_locale unless cookies[:locale]
    I18n.locale = cookies[:locale]
    return unless current_user
    cookies[:language] = cookies[:locale] unless cookies[:language]
    current_user.language = cookies[:language]
    current_user.save
    I18n.locale = current_user.language
  end
  
  def default_url_options
    {locale: I18n.locale}
  end
end

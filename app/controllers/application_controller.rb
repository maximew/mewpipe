class ApplicationController < ActionController::Base
  before_filter :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_locale

  def default_url_options(options={})
  	logger.debug "default_url_options is passed options: #{options.inspect}\n"
  	{locale: I18n.locale}
  end

  private

  def http_header_locale
  	request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
  end

  def set_locale
  	I18n.locale = params[:locale] || http_header_locale || I18n.default_locale
  end

  protected 

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :firstname << :lastname
    devise_parameter_sanitizer.for(:account_update) << :firstname << :lastname
  end
end

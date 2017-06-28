class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|
     	redirect_to root_url, :alert => exception.message
     	end
  
  before_action :set_locale

	def set_locale
  		I18n.locale = params[:locale] || I18n.default_locale
	end

	def default_url_options(options={})
  		{ locale: I18n.locale }
	end

	def current_ability
		@current_ability ||= Ability.new(current_admin_user)
	end

end


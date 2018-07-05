class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
		devise_parameter_sanitizer.permit(:acount_update, keys: [:name])
	end

	before_action :set_source 
	def set_source
		session[:source] = params[:q] if params[:q]
	end

	def current_user 
		super ||  OpenStruct.new(name: "Guest User", first_name: "Guest", last_name: "User", email: 'guest@email.com')
	end

end

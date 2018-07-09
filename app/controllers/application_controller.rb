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

	before_action :set_copyright

	def set_copyright
		@copyright = AndresPaint::Renderer.copyright "Carlos Rivera", "all right reserved"
	end



	module AndresPaint
		class Renderer
			def self.copyright name, msg
				"&copy: #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
			end
		end
	end
	
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #before_filter :authenticate_user!

  before_filter :configure_permitted_parameters, if: :devise_controller?

  	def is_admin?  		
	  	if current_user.role_id == Role.find_by_name('admin').id
	  		return true
	  	else
	  		return false
	  	end
  	end

  	def is_customer?  		
	  	if current_user.role_id == Role.find_by_name('Customer').id
	  		return true
	  	else
	  		return false
	  	end
  	end

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :username, :address, :phone_number, :role_id) }
           
        end 
end

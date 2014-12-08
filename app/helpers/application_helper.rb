module ApplicationHelper
	def is_admin?  
	  if user_signed_in?		
	  	if current_user.role_id == Role.find_by_name('admin').id
	  		return true
	  	else
	  		return false
	  	end
	  end
  	end

  	def is_customer?  
  	  if user_signed_in?		
	  	if current_user.role_id == Role.find_by_name('Customer').id
	  		return true
	  	else
	  		return false
	  	end
	  end
  	end

  	
end

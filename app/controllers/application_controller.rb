class ApplicationController < ActionController::Base
	
  	protect_from_forgery
  	def after_sign_in_path_for(resource_or_scope)
  		if resource_or_scope.is_a?(AdminUser) 
			admin_dashboard_path
		else
  			currnet_user_properties_path
  		end
  	end
	
	def after_sign_out_path_for(resource)
		home_path = "/users/sign_in"
 		respond_to?(home_path, true) ? send(root_path) : home_path
	end

end

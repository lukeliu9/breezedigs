class ApplicationController < ActionController::Base
  protect_from_forgery

   def after_sign_in_path_for(resource)
   	if resource.instance_of?(AdminUser)
   		admin_dashboard_path
   	else
		user_path(resource)
	end
   end

end

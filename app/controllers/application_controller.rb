class ApplicationController < ActionController::Base
  protect_from_forgery

   def after_sign_in_path_for(resource)
   	if resource.instance_of?(AdminUser)
   		admin_dashboard_path
   	else
		user_path(resource)
	end
   end

   # Macro for a search function
   def self.search_action_for(table, options = {})
   	table = table.to_s
   	model_class = table.classify.constantize
   	define_method (:search) do
   		@title = options[:title] || "Your #{table.humanize}"
   		search_column = options[:search_column] || 'email'
   		@display_as = options[:display_as] || :name
   		@display_path = options[:display_path] || "#{table.singularize}_path"
   		@results = model_class.where("#{search_column} like ?", "%#{params[:term]}%")
   		render 'shared/search_results'
   		end
   		# Configure routes
   end

   private
   
end

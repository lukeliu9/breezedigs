ActiveAdmin.register Review do
  
	active_admin_importable

	index do
		column :building
		column :overall
		column :pros
		column :cons
		column :advice
		column :user_id
		column :created_at

		default_actions
	end

end

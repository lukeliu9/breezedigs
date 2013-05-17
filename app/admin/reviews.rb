ActiveAdmin.register Review do
  
	active_admin_importable

	index do
		column :building
		column :pros
		column :cons
		column :overall
		column :user_id
		column :created_at
		column :status

		default_actions
	end

end

ActiveAdmin.register Rent do
  active_admin_importable

	index do
		column :rent
		column :utilities
		column :beds
		column :baths
		column :sqft

		default_actions
	end
end

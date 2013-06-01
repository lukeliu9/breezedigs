ActiveAdmin.register Photo do
  index do
		column :user_id
		column :building_id
		column :image
		column :description

		default_actions
	end
end

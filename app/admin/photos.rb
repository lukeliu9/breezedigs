ActiveAdmin.register Photo do
  index do
		column :user
		column :building
		column :image do |image|
			image_tag(image.image.url, width: "100px")
		end
		column :description

		default_actions
	end

	show do |photo|
      attributes_table do
        row :user
        row :building
        row :description
        row :created_at
        row :updated_at
        row :image_file_name
        row :image_content_type
        row :image_file_size
        row :image do
          image_tag(photo.image.url)
        end
      end
      active_admin_comments
    end
end

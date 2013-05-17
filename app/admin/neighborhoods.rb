ActiveAdmin.register Neighborhood do

  active_admin_importable

  index do
  	column :name
  	column :area_id
  	column :area

  	default_actions
  end

end

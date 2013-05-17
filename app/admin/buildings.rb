ActiveAdmin.register Building do
  
  active_admin_importable
  
  index do
  	column :name
  	column :address
  	column :city
  	column :area
  	column :neighborhood
  	column :zip
    column :status
    
  	default_actions
  end

end

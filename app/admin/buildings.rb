ActiveAdmin.register Building do
  
  index do
  	column :name
  	column :description
  	column :address
  	column :city
  	column :area
  	column :neighborhood
  	column :zip
    
  	default_actions
  end

end

ActiveAdmin.register Review do
  
  index do
  	column :building
  	column :pros
  	column :cons
  	column :overall
  	column :user_id
  	column :created_at
  end

end

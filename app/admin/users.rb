ActiveAdmin.register User do
  index do
  	column :email
  	column :first_name
  	column :last_name
  	column :last_sign_in_at
  	column :created_at
  end
end

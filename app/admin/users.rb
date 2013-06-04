ActiveAdmin.register User do

  active_admin_importable

  index do
  	column :email
  	column :first_name
  	column :last_name
  	column :last_sign_in_at
  	column :created_at

  	column 'Reviews' do |user|
  		user.reviews.collect(&:overall).join(', ')
  	end

    column 'Rents' do |user|
      user.rents.collect(&:rent).join(', ')
    end

  	default_actions
  end
  
end

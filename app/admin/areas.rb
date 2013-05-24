ActiveAdmin.register Area do

  active_admin_importable	

  index do
  	column :name
  	column :city
  	column 'Neighborhoods' do |area|
  		area.neighborhoods.collect(&:name).join(', ')
  	end

  	default_actions
  end

end

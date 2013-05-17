ActiveAdmin.register City do
  
  active_admin_importable

	index do
		column :name
		column 'Areas' do |city|
  			city.areas.collect(&:name).join(', ')
  		end

		default_actions
	end

end

module CitiesHelper
	def render_city(buildings)
		if buildings.empty?
			render 'cityblank'
		else
			render 'city'
		end
	end
end

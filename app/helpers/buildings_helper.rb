module BuildingsHelper
	
	# For use in the single building listing page where we have an instance variable from the controller
	def building_geography
		city = @building.city.name
		area = @building.area.name
		hood = @building.neighborhood.name

		city = area.blank? ? "#{city}" : "#{city} > "
		area = hood.blank? ? "#{area}" : "#{area} > "
		
		"#{city} #{area} #{hood}"
	end

	# For use in the buildings search results when iterating through the building results
	def geogrify(building)
		city = building.city.name
		area = building.area.name
		hood = building.neighborhood.name

		city = area.blank? ? "#{city}" : "#{city} > "
		area = hood.blank? ? "#{area}" : "#{area} > "
		
		"#{city} #{area} #{hood}"
	end

	def supermarket
		"N/A"
	end

	def schools
		"N/A"
	end

	def pets
		"N/A"
	end

	def display_rental_data
		"rentalll"
		# raw("
		# 	<tr class=\"rent-row\">
		# 		<td id=\"rent-type-cell\"><h4>Test<h4></td>
		# 		<td id=\"rent-avg-cell\"><h4>Avg Rent<h4></td>
		# 		<td id=\"rent-bars-cell\"><div class=\"rent-holder\">Rents</div></td>
		# 	</tr>
		# 	")
	end

end

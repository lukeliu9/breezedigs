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

	def star_ratings(rating)
		avg_rating = @reviews.average_review_rating(rating)
		
	end

end

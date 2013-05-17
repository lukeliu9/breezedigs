module StaticPagesHelper

	def footer_cities(start, stop)
	  cities = City.where(id: start..stop).order('name ASC')
	  cities.map { |city| raw(link_to(raw("<li id=\"footer-cities\">#{city.name}</li>"), city_path(city))) }.join.html_safe
	end

end

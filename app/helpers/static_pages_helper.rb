module StaticPagesHelper

	def footer_cities(start, stop)
	  cities = City.where(id: start..stop).order('name ASC').select(:name)
	  cities.map { |city| "<li id=\"footer-cities\"> #{city.name} </li>" }.join.html_safe
	end

end

module StaticPagesHelper

	def show_cities(offset, count, limit=85, cssclass = "footer-cities", state = false)
	  all_cities = City.order('population DESC').limit(limit) #17 cities in each footer column times 5 footer columns
	  sorted_cities = all_cities.sort! {|a,b| a.name.downcase <=> b.name.downcase}
	  cities = sorted_cities[offset, count]
	  if state == false
	  	  cities.map { |city| raw(link_to(raw("<li id=\"#{cssclass}\">#{city.name}</li>"), city_path(city))) }.join.html_safe
	  else
	  	  cities.map { |city| raw(link_to(raw("<li id=\"#{cssclass}\">#{city.name}, <span>#{city.state}</span></li>"), city_path(city))) }.join.html_safe
	  end	
	end

end

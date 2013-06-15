module ApplicationHelper

	def full_title(page_title)
	    base_title = "BreezeDigs - Crowdsource the apartment finding process"
	    if page_title.empty?
	      base_title
	    else
	      "#{base_title} | #{page_title}"
	    end
  	end

  	def resource_name
    	:user
    end

	def resource
		@resource ||= User.new
	end

	def devise_mapping
		@devise_mapping ||= Devise.mappings[:user]
	end

	def geogrify(building)
		city = building.city.name
		area = building.area ? building.area.name : ""
		hood = building.neighborhood ? building.neighborhood.name : ""

		city = area.blank? ? "#{city}" : "#{city} > "
		area = hood.blank? ? "#{area}" : "#{area} > "
		
		"#{city} #{area} #{hood}"
	end

	def star_image(avg, width = 16, height = 80, id = "")
		case avg
		when 1
			raw("<img src=\"/assets/stars/star1.png\" height=\"#{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 2
			raw("<img src=\"/assets/stars/star2.png\" height=\"#{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 3
			raw("<img src=\"/assets/stars/star3.png\" height=\"#{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 4
			raw("<img src=\"/assets/stars/star4.png\" height=\"#{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 5
			raw("<img src=\"/assets/stars/star5.png\" height=\"#{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 6
			raw("<img src=\"/assets/stars/star6.png\" height=\"#{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 7
			raw("<img src=\"/assets/stars/star7.png\" height=\"#{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 8
			raw("<img src=\"/assets/stars/star8.png\" height=\"#{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 9
			raw("<img src=\"/assets/stars/star9.png\" height=\"#{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 10
			raw("<img src=\"/assets/stars/star10.png\" height=\"#{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 11
			raw("<img src=\"/assets/stars/star11.png\" height=\"#{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 12
			raw("<img src=\"/assets/stars/star12.png\" height=\"#{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 13
			raw("<img src=\"/assets/stars/star13.png\" height=\"#{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 14
			raw("<img src=\"/assets/stars/star14.png\" height=\"#{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 15
			raw("<img src=\"/assets/stars/star15.png\" height=\"#{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 16
			raw("<img src=\"/assets/stars/star16.png\" height=\"#{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 17
			raw("<img src=\"/assets/stars/star17.png\" height=\"#{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 18
			raw("<img src=\"/assets/stars/star18.png\" height=\"#{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 19
			raw("<img src=\"/assets/stars/star19.png\" height=\"#{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 20
			raw("<img src=\"/assets/stars/star20.png\" height=\"#{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		else
			raw("<img src=\"/assets/stars/star0.png\" height=\"#{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		end	
	end

	def light_star_image(avg, width = 16, height = 80, id = "")
		case avg
		when 1
			raw("<img src=\"/assets/stars/lightstar1.png\" height=\"#{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 2
			raw("<img src=\"/assets/stars/lightstar2.png\" height=\"{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 3
			raw("<img src=\"/assets/stars/lightstar3.png\" height=\"{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 4
			raw("<img src=\"/assets/stars/lightstar4.png\" height=\"{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 5
			raw("<img src=\"/assets/stars/lightstar5.png\" height=\"{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 6
			raw("<img src=\"/assets/stars/lightstar6.png\" height=\"{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 7
			raw("<img src=\"/assets/stars/lightstar7.png\" height=\"{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 8
			raw("<img src=\"/assets/stars/lightstar8.png\" height=\"{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 9
			raw("<img src=\"/assets/stars/lightstar9.png\" height=\"{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 10
			raw("<img src=\"/assets/stars/lightstar10.png\" height=\"{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 11
			raw("<img src=\"/assets/stars/lightstar11.png\" height=\"{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 12
			raw("<img src=\"/assets/stars/lightstar12.png\" height=\"{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 13
			raw("<img src=\"/assets/stars/lightstar13.png\" height=\"{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 14
			raw("<img src=\"/assets/stars/lightstar14.png\" height=\"{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 15
			raw("<img src=\"/assets/stars/lightstar15.png\" height=\"{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 16
			raw("<img src=\"/assets/stars/lightstar16.png\" height=\"{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 17
			raw("<img src=\"/assets/stars/lightstar17.png\" height=\"{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 18
			raw("<img src=\"/assets/stars/lightstar18.png\" height=\"{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 19
			raw("<img src=\"/assets/stars/lightstar19.png\" height=\"{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		when 20
			raw("<img src=\"/assets/stars/lightstar20.png\" height=\"{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		else
			raw("<img src=\"/assets/stars/lightstar0.png\" height=\"{width}px\" width=\"#{height}px\" id=\"#{id}\">")
		end	
	end
	
end

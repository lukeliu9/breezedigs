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
		area = building.area ? building.area.name : ""
		hood = building.neighborhood ? building.neighborhood.name : ""

		city = area.blank? ? "#{city}" : "#{city} > "
		area = hood.blank? ? "#{area}" : "#{area} > "
		
		"#{city} #{area} #{hood}"
	end

	def first_n_words_of_first_review(building, n)
		"#{building.reviews.map(&:pros).first.split(/\s+/, n+1)[0...n].join(' ')}..."
	end

	def star_image(avg)
		case avg
		when 1
			raw("<img src=\"/assets/stars/star1.png\" height=\"16px\" width=\"80px\">")
		when 2
			raw("<img src=\"/assets/stars/star2.png\" height=\"16px\" width=\"80px\">")
		when 3
			raw("<img src=\"/assets/stars/star3.png\" height=\"16px\" width=\"80px\">")
		when 4
			raw("<img src=\"/assets/stars/star4.png\" height=\"16px\" width=\"80px\">")
		when 5
			raw("<img src=\"/assets/stars/star5.png\" height=\"16px\" width=\"80px\">")
		when 6
			raw("<img src=\"/assets/stars/star6.png\" height=\"16px\" width=\"80px\">")
		when 7
			raw("<img src=\"/assets/stars/star7.png\" height=\"16px\" width=\"80px\">")
		when 8
			raw("<img src=\"/assets/stars/star8.png\" height=\"16px\" width=\"80px\">")
		when 9
			raw("<img src=\"/assets/stars/star9.png\" height=\"16px\" width=\"80px\">")
		when 10
			raw("<img src=\"/assets/stars/star10.png\" height=\"16px\" width=\"80px\">")
		when 11
			raw("<img src=\"/assets/stars/star11.png\" height=\"16px\" width=\"80px\">")
		when 12
			raw("<img src=\"/assets/stars/star12.png\" height=\"16px\" width=\"80px\">")
		when 13
			raw("<img src=\"/assets/stars/star13.png\" height=\"16px\" width=\"80px\">")
		when 14
			raw("<img src=\"/assets/stars/star14.png\" height=\"16px\" width=\"80px\">")
		when 15
			raw("<img src=\"/assets/stars/star15.png\" height=\"16px\" width=\"80px\">")
		when 16
			raw("<img src=\"/assets/stars/star16.png\" height=\"16px\" width=\"80px\">")
		when 17
			raw("<img src=\"/assets/stars/star17.png\" height=\"16px\" width=\"80px\">")
		when 18
			raw("<img src=\"/assets/stars/star18.png\" height=\"16px\" width=\"80px\">")
		when 19
			raw("<img src=\"/assets/stars/star19.png\" height=\"16px\" width=\"80px\">")
		when 20
			raw("<img src=\"/assets/stars/star20.png\" height=\"16px\" width=\"80px\">")
		else
			raw("<img src=\"/assets/stars/star0.png\" height=\"16px\" width=\"80px\">")
		end	
	end

	def light_star_image(avg)
		case avg
		when 1
			raw("<img src=\"/assets/stars/lightstar1.png\" height=\"16px\" width=\"80px\">")
		when 2
			raw("<img src=\"/assets/stars/lightstar2.png\" height=\"16px\" width=\"80px\">")
		when 3
			raw("<img src=\"/assets/stars/lightstar3.png\" height=\"16px\" width=\"80px\">")
		when 4
			raw("<img src=\"/assets/stars/lightstar4.png\" height=\"16px\" width=\"80px\">")
		when 5
			raw("<img src=\"/assets/stars/lightstar5.png\" height=\"16px\" width=\"80px\">")
		when 6
			raw("<img src=\"/assets/stars/lightstar6.png\" height=\"16px\" width=\"80px\">")
		when 7
			raw("<img src=\"/assets/stars/lightstar7.png\" height=\"16px\" width=\"80px\">")
		when 8
			raw("<img src=\"/assets/stars/lightstar8.png\" height=\"16px\" width=\"80px\">")
		when 9
			raw("<img src=\"/assets/stars/lightstar9.png\" height=\"16px\" width=\"80px\">")
		when 10
			raw("<img src=\"/assets/stars/lightstar10.png\" height=\"16px\" width=\"80px\">")
		when 11
			raw("<img src=\"/assets/stars/lightstar11.png\" height=\"16px\" width=\"80px\">")
		when 12
			raw("<img src=\"/assets/stars/lightstar12.png\" height=\"16px\" width=\"80px\">")
		when 13
			raw("<img src=\"/assets/stars/lightstar13.png\" height=\"16px\" width=\"80px\">")
		when 14
			raw("<img src=\"/assets/stars/lightstar14.png\" height=\"16px\" width=\"80px\">")
		when 15
			raw("<img src=\"/assets/stars/lightstar15.png\" height=\"16px\" width=\"80px\">")
		when 16
			raw("<img src=\"/assets/stars/lightstar16.png\" height=\"16px\" width=\"80px\">")
		when 17
			raw("<img src=\"/assets/stars/lightstar17.png\" height=\"16px\" width=\"80px\">")
		when 18
			raw("<img src=\"/assets/stars/lightstar18.png\" height=\"16px\" width=\"80px\">")
		when 19
			raw("<img src=\"/assets/stars/lightstar19.png\" height=\"16px\" width=\"80px\">")
		when 20
			raw("<img src=\"/assets/stars/lightstar20.png\" height=\"16px\" width=\"80px\">")
		else
			raw("<img src=\"/assets/stars/lightstar0.png\" height=\"16px\" width=\"80px\">")
		end	
	end


	def share_icons
		raw("
			<div class=\"addthis_toolbox addthis_default_style\">
			<a class=\"addthis_button_preferred_1\"></a>
			<a class=\"addthis_button_preferred_2\"></a>
			<a class=\"addthis_button_preferred_3\"></a>
			<a class=\"addthis_button_preferred_4\"></a>
			<a class=\"addthis_button_compact\"></a>
			<a class=\"addthis_counter addthis_bubble_style\"></a>
			</div>
			<script type=\"text/javascript\">var addthis_config = {\"data_track_addressbar\":true};</script>
			<script type=\"text/javascript\" src=\"//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-51a3e5fd46cf9524\"></script>")
	end

end

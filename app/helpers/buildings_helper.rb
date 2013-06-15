module BuildingsHelper
	

	def first_n_words_of_first_review(building, n)
		"#{building.reviews.map(&:pros).first.split(/\s+/, n+1)[0...n].join(' ')}..."
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

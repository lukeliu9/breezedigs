module ReviewsHelper
	def star_ratings(rating)
      raw("
		<input name=\"review[#{rating}]\" type=\"radio\" class=\"star\" value=\"1\"/>
		<input name=\"review[#{rating}]\" type=\"radio\" class=\"star\" value=\"2\"/>
		<input name=\"review[#{rating}]\" type=\"radio\" class=\"star\" value=\"3\"/>
		<input name=\"review[#{rating}]\" type=\"radio\" class=\"star\" value=\"4\"/>
		<input name=\"review[#{rating}]\" type=\"radio\" class=\"star\" value=\"5\"/>")
	end

	def sort_recent(reviews)
	  reviews.sort_by { |obj| obj.created_at }
	end

end

module ReviewsHelper
	def star_ratings(rating)
		raw("<input name=\"#{rating}\" type=\"radio\" class=\"star\" value=\"1\"/>
		<input name=\"#{rating}\" type=\"radio\" class=\"star\" value=\"2\"/>
		<input name=\"#{rating}\" type=\"radio\" class=\"star\" value=\"3\"/>
		<input name=\"#{rating}\" type=\"radio\" class=\"star\" value=\"4\"/>
		<input name=\"#{rating}\" type=\"radio\" class=\"star\" value=\"5\"/><br>")
	end

end

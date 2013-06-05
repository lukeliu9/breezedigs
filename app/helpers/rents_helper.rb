module RentsHelper
	def get_rent_avg(beds, baths)
		rent = @rents.average_for(beds, baths, "rent")
		if rent == nil
			"N/A"
		else
			raw("<span>Rent:</span> $") << number_with_precision(rent, precision: 0, delimiter: ',')
		end
	end

	def get_util_avg(beds, baths)
		util = @rents.average_for(beds, baths, "utilities")
		if util == nil
			"N/A"
		else
			raw("<span>Utilities:</span> $") << number_with_precision(util, precision: 0, delimiter: ',')
		end
	end

	def show_rent_bar(beds, baths)
		min = @rents.get_rents_min(beds, baths) ? (@rents.get_rents_min(beds, baths)-535).to_f / 135 : ""
		rent = @rents.average_for(beds, baths, "rent")
		range = rent_range(beds, baths).to_f / 135

		if rent == nil
			raw("<h6>N/A</h6>").html_safe
		else
			raw("<div class=\"rent-range\" style=\"width: #{range}em; margin-left: #{min}em;\">
											</div>").html_safe
		end
	end

	def show_avg_bar(beds, baths)
		avg = @rents.average_for(beds, baths, "rent") ? (@rents.average_for(beds, baths, "rent")-535).to_f / 135 : 0
		if avg == 0
			""
		else
			raw("<div class=\"avg-bar\" style=\"margin-left: #{avg}em\"></div>").html_safe
		end
	end

	def rent_range(beds, baths)
		max = @rents.get_rents_max(beds, baths)
		min = @rents.get_rents_min(beds, baths)
		max && min ? max - min : 0
	end
end

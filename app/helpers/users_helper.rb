module UsersHelper
	def show_reviews(user)
		has_reviews = user.reviews.is_blank?

		if reviews?

		else
			raw("<h3>You have not written a review yet</h3>").html_safe
			raw(link_to(raw("<button class=\"btn btn-primary btn-large\">Write a review</button>"), new_review_path)).html_safe
		end
	end
end

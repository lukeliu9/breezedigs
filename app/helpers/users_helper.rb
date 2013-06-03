module UsersHelper
	def show_reviews(user)
		has_reviews = user.reviews.is_blank?

		if reviews?

		else
			raw("<h3>You have not written a review yet</h3>").html_safe
			raw(link_to(raw("<button class=\"btn btn-primary btn-large\">Write a review</button>"), new_review_path)).html_safe
		end
	end

	def gravatar_for(user, options = { size:100 })
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase) #converts to gravatar-readble id
		size = options[:size]
		gravatar_url = "https://www.gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
		image_tag(gravatar_url, alt: user.first_name, class: "gravatar")
	end
end

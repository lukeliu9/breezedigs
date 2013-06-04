class ReviewsController < ApplicationController

	def index
		@building = Building.find(params[:building_id])
		@reviews = @building.reviews
		@json = @building.to_gmaps4rails
		@nearby = Building.near(@building, 0.5).delete_current_building(@building).first(5)
	end

	def new
		no_building = params[:building_id] ? false : true
		if no_building
			redirect_to selectbuilding_path
		else
			if user_signed_in?
				@building = Building.find(params[:building_id])
				@review = @building.reviews.new
			else
		  		redirect_to new_user_session_path
	    	end
		end
	end

	def create
		@building = Building.find(params[:building_id])
		@review = @building.reviews.new(params[:review])
		current_user.reviews << @review
		if @review.save
			flash[:notice] = "Thank you for submitting a review and contributing to our community!"
			redirect_to current_user
		else
			render :action => 'new'
		end
	end

	def show
	end

	def update
	end

	def edit
		@review = Review.find(params[:id])
		@building = @review.building
	end

	def destroy
		@review = Review.find(params[:id])
		@review.delete
		redirect_to current_user
	end

	def setup_building
		@building = Building.find(params[:building_id])
	end

	def selectbuilding
		@featured = Building.select_only_in_city("Chicago").has_image.select_featured(15)
	end
	
end

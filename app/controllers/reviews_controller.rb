class ReviewsController < ApplicationController

	def index
		@building = Building.find(params[:building_id])
		@reviews = @building.reviews
	end

	def new
		no_building = params[:building_id] ? false : true
		if no_building
			redirect_to selectbuilding_path
		else
			@building = Building.find(params[:building_id])
			@review = @building.reviews.new
		end
	end

	def create
		@review = Review.new(params[:review])
		if @review.save
			flash[:notice] = "Thank you for submitting a review and contributing to our community!"
			render action: 'thanks'
		else
			render :action => 'new'
		end
	end

	def show
	end

	def update
	end

	def edit
	end

	def destroy
	end

	def setup_building
		@building = Building.find(params[:building_id])
	end

	def selectbuilding
		empty_search = params[:search] ? false : true
    	
    	if empty_search
    		@buildings = Building.page(params[:page]).per(10)
    	else
			@search = Sunspot.search(Building) do
	  			fulltext params[:search]
			end
	  		@buildings = Building.where(id: @search.results.map(&:id)).page(params[:page]).per(10)
	  	end
	end

	def thanks
	end
	
end

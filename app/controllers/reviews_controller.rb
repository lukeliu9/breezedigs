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
		@building = Building.find(params[:building_id])
		@review = @building.reviews.new(params[:review])
		current_user.reviews << @review
		if @review.save
			flash[:notice] = "Thank you for submitting a review and contributing to our community!"
			redirect_to building_path(@building)
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
		empty_search = params[:search] ? false : true
    	
    	if empty_search
    		@buildings = Building.page(params[:page]).per(15)
    	else
			@search = Sunspot.search(Building) do
	  			fulltext params[:search]
			end
	  		@buildings = Building.where(id: @search.results.map(&:id)).page(params[:page]).per(15)
	  	end
	end

	def thanks
	end

	def pros
	end

	def cons
	end

	def mgmt
	end

	def nsn
	end

	def unitamen
	end

	def parktrans
	end

	def advice
	end
	
end

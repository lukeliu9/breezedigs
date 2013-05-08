class ReviewsController < ApplicationController
	before_filter :setup_building

	include Wicked::Wizard

	steps :building, :summary, :ratings, :details

	def index
	end

	def new
		@review = Review.new
	end

	def create
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
	
end

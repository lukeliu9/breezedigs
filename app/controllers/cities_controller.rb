class CitiesController < ApplicationController

	def index
	end

	def create
	end

	def show
		@city = City.find(params[:id])

			@search = Sunspot.search(Building) do
	  			fulltext params[:id]
	  		end

	  	@buildings = Building.where(id: @search.results.map(&:id)).page(params[:page]).per(10)
	end

	def update
	end

	def new
	end

	def edit
	end

	def destroy
	end

end

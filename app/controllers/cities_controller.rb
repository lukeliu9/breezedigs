class CitiesController < ApplicationController

	def index
	end

	def create
	end

	def show
		@city = City.find(params[:id])
		@search = Building.joins{city}.where{city.id = @city}
  		@buildings = @search
  		@buildingresults = Kaminari.paginate_array(@buildings).page(1).per(10)
		@json = @buildingresults.to_gmaps4rails

		@json = @buildings.to_gmaps4rails
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

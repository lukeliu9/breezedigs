class CitiesController < ApplicationController

	def index
		@citeis = City.all
	end

	def create

	end

	def show
		@city = City.find(params[:id])
		@search = Building.search_by_city(@city)
  		@buildings = Building.sort_by_reviews(@search, "count")
  		@buildingresults = Kaminari.paginate_array(@buildings).page(params[:page]).per(10)
		@areas = @buildings.map(&:area)
  		@neighborhoods = @buildings.map(&:neighborhood)
		@json = @buildingresults.to_gmaps4rails do |building, marker|
		  	marker.infowindow render_to_string(:partial => "/buildings/infowindow", :locals => { :building => building})
		    marker.title "#{building.name}"
		end
	end

	def update
	end

	def new

	end

	def edit

	end

	def destroy
		@city = City.find(params[:id])
		@city.delete
	end

end

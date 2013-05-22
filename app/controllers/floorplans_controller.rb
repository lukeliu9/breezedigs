class FloorplansController < ApplicationController

	def new
		no_building = params[:building_id] ? false : true
		if no_building
			redirect_to selectbuildingfloorplan_path
		else
			@building = Building.find(params[:building_id])
			@floorplan = @building.floorplans.new
		end
	end

	def create
	end

	def index
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end

	def selectbuildingfloorplan
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


end

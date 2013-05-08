class BuildingsController < ApplicationController

	def new
  		@building = Building.new
  		@cities = City.pluck(:name)
	end

	def create
		@building = Building.new(params[:building])
		if @building.save
		flash[:notice] = "Successfully created building."
		redirect_to buildings_path
		else
		render :action => 'new'
		end
	end

	def show
		@building = Building.find(params[:id])
		if request.path != building_path(@building)
			redirect_to @building, status: :moved_permanently
		end
	end

	def index
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

	def update
	end

	def edit
	end

	def destroy
	end

end

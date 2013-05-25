class RentsController < ApplicationController

	def new
		no_building = params[:building_id] ? false : true
		if no_building
			redirect_to selectbuildingrent_path
		else
			@building = Building.find(params[:building_id])
			@rent = @building.rents.new
		end
	end

	def create
		@building = Building.find(params[:building_id])
		@rent = @building.rents.new(params[:rent])
		current_user.rents << @rent
		if @rent.save
			flash[:notice] = "Thank you for submitting your rent and contributing to our community!"
			render action: 'thanks'
		else
			render :action => 'new'
		end
	end

	def index
		@building = Building.find(params[:building_id])
		@rents = @building.rents
	end

	def show
	end

	def update
	end

	def edit
	end

	def destroy
	end

	def selectbuildingrent
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

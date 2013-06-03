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
			redirect_to building_rents_path(@building)
		else
			render :action => 'new'
		end
	end

	def index
		@building = Building.find(params[:building_id])
		@rents = @building.rents
		@reviews = @building.reviews
		@json = @building.to_gmaps4rails
		@nearby = Building.near(@building, 0.5).delete_current_building(@building).first(5)
	end

	def show
	end

	def update
	end

	def edit
		@rent = Rent.find(params[:id])
		@building = @rent.building
	end

	def destroy
		@rent = Rent.find(params[:id])
		@rent.delete
		redirect_to current_user
	end

	def selectbuildingrent
		@featured = Building.select_only_in_city("Chicago").has_image.select_featured(15)
	end

end

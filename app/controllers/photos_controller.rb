class PhotosController < ApplicationController

	def new
		no_building = params[:building_id] ? false : true
		if no_building
			redirect_to selectbuildingphoto_path
		else
			if user_signed_in?
				@building = Building.find(params[:building_id])
			@photo = @building.photos.new
			else
		  		redirect_to new_user_session_path
	    	end
		end
	end

	def create
		@building = Building.find(params[:building_id])
		@photo = @building.photos.new(params[:photo])
		current_user.photos << @photo
		if @photo.save
			flash[:notice] = "Thank you for submitting your rent and contributing to our community!"
			redirect_to building_path(@building)
		else
			render :action => 'new'
		end
	end

	def index
	end

	def show
	end

	def edit
		@photo = Photo.find(params[:id])
		@building = @photo.building
	end

	def update
	end

	def destroy
		@photo = Photo.find(params[:id])
		@photo.delete
		redirect_to current_user
	end

	def selectbuildingphoto
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

class UsersController < ApplicationController
	
	skip_before_filter :verify_authenticity_token

	def show
		@user = User.find(params[:id])
		@reviews = @user.reviews
		@rents = @user.rents
		@photos = @user.photos
		@buildings = @user.buildings
	end

	def index
	end

	def create
		@user = User.create(params[:user])
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(params[:user])
			redirect_to current_user
		else
			render :action => 'edit'
		end
	end

	def new
	end

	def edit
		@user = User.find(params[:id])
	end

	def destroy
		@user = User.find(params[:id])
		@user.delete
		redirect_to root_path
	end

end

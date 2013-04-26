class UsersController < ApplicationController
	
	def show
		@user = User.find(params[:id])
	end

	def index
	end

	def create
		@user = User.create(params[:user])
	end

	def update
	end

	def new
	end

	def edit
		@user = User.find(params[:id])
	end

	def destroy
	end

	def agent
		respond_to do |format|
			format.html
	  		format.js
		end
	end

	def mover
		respond_to do |format|
			format.html
	  		format.js
		end
	end

end

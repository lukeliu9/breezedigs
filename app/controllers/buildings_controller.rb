class BuildingsController < ApplicationController

	def show
	end

	def index
		@projects = Project.search(params[:search])
	end

	def create
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

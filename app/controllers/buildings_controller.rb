class BuildingsController < ApplicationController

	def new
		if user_signed_in?
			@building = Building.new
		else
	  		redirect_to new_user_session_path
    	end
	end

	def create
		@building = Building.new(params[:building])
		if @building.save
			flash[:notice] = "Successfully created building."
			current_user.buildings << @building
			redirect_to building_path(@building)
		else
			render :action => 'new'
		end
	end

	def show
		@building = Building.find(params[:id])
		redirect_to building_reviews_path(@building)
		if request.path != building_path(@building)
			redirect_to @building, status: :moved_permanently
		end
	end

	def index
		empty_search = params[:search] ? false : true

    	if empty_search
    		@buildings = []
    		@buildingresults = Kaminari.paginate_array(@buildings).page(params[:page]).per(10)
    		@json = @buildings.to_gmaps4rails
    		@areas = @buildings.map(&:area)
  			@neighborhoods = @buildings.map(&:neighborhood)
    	else
	  		@search = Building.search_attributes(params[:search])
	  		@buildings = Building.sort_by_reviews(@search, "count")
	  		@buildingresults = Kaminari.paginate_array(@buildings).page(params[:page]).per(10)
  			@areas = @buildings.map(&:area)
  			@neighborhoods = @buildings.map(&:neighborhood)
  			@json = @buildingresults.to_gmaps4rails do |building, marker|
			  	marker.infowindow render_to_string(:partial => "/buildings/infowindow", :locals => { :building => building})
			    marker.title "#{building.name}"
			end
	  	end
	end

	def update

	end

	def edit
		@building = Building.find(params[:id])
	end

	def destroy

	end

	def update_areas
	   city_id =  (params[:city_id].nil? || params[:city_id].empty?) ? 0 : params[:city_id].to_i
       # updates artists and songs based on genre selected
       if city_id == 0
         @areas = []
         @neighborhoods = []
        
        else
          city = City.find(params[:city_id])
          # map to name and id for use in our options_for_select
          @areas = city.areas.map{|a| [a.name, a.id]}
          @neighborhoods = Neighborhood.where(:area_id => city.areas.each{|a| a.id}).map{|s| [s.name, s.id]}
      end
      @areas.insert(0, "Select an Area")
      @neighborhoods.insert(0, "Select a neighborhood") 
      @areas = city.areas.order("name asc").map{|a| [a.name, a.id]}
	  @neighborhoods = Neighborhood.where(:area_id => city.areas.each{|a| a.id}).order("name asc").map{|s| [s.name, s.id]}
  	end
 
  	def update_neighborhoods
	    # updates songs based on artist selected
	    area = Area.find(params[:area_id])
  		@neighborhoods = area.neighborhoods.sort_by(&:name).map{|s| [s.name, s.id]}.insert(0, "Select a neighborhood")
  	end

end

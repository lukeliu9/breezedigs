# Create US cities

=begin

City.delete_all    #first deletes existing records before creating new ones from array below
["Albuquerque", "Amarillo", "Anchorage", "Arlington", "Athens", "Atlanta", "Augusta", "Aurora", "Austin", 
	"Bakersfield", "Baltimore", "Baton Rouge", "Birmingham", "Cape Coral", "Charleston", 
	"Charlotte", "Chattanooga", "Chesapeake", "Chicago", "Cincinnati", "Cleveland", "Colorado Springs", 
	"Columbus, OH", "Corpus Christi", "Dallas", "Denver", "Des Moines", "Detroit", 
	"Durham", "El Paso", "Fayetteville", "Fort Wayne", "Fort Worth", "Fremont", "Fresno", "Greensboro", 
	"Henderson", "Houston", "Huntsville", "Indianapolis", "Jackson", "Jacksonville", "Kansas City, KS", 
	"Kansas City, MO", "Knoxville", "Lancaster", "Laredo", "Las Vegas", "Lexington", "Lincoln", "Little Rock", "Los Angeles", 
	"Louisville", "Lubbock", "Memphis", "Mesa", "Milwaukee", "Mobile", "Montgomery", "Nashville", "New Orleans", 
	"New York City", "Oklahoma City", "Omaha", "Orlando", "Palmdale", "Peoria", "Philadelphia", 
	"Phoenix", "Plano", "Portland", "Raleigh", "Riverside", "Sacramento", "Salt Lake City", "San Antonio", 
	"San Diego", "San Jose", "Savannah", "Scottsdale", "Seattle", "Shreveport", "Springfield", "Tallahassee", "Tampa", 
	"Toledo", "Tucson", "Tulsa", "Virginia Beach", "Waco", "Wichita", "Wichita Falls", "Winston-Salem"].each do |city|
	City.create!(name: city)	
	end

=end

=begin

# Create chicago areas

["Far North Side", "Northwest Side", "North Side", "West Side", 
	"Downtown", "South Side", "Southwest Side", "Far Southeast Side", 
	"Far Southwest Side"].each do |area|
		Area.create!(name: area, city: "Chicago")
	end

# Create city of Chicago neighborhoods	

	hoods = Neighborhood.where(city: "Chicago")
	hoods.each do |hood|
		hood.delete
	end

# Chicago: Far North Side

["Rogers Park", "West Ridge", "Uptown", "Lincoln Square", 
	"Edison Park", "Norwood Park", "Jefferson Park", 
	"Forest Glen", "North Park", "Albany Park", "O'Hare", "Edgewater"].each do |neighborhood|
		Neighborhood.create!(name: neighborhood, area: "Far North Side")
	end	

# Chicago: Northwest Side

["Portage Park", "Irving Park", "Dunning", "Montclare", 
	"Belmont Cragin", "Hermosa"].each do |neighborhood|
		Neighborhood.create!(name: neighborhood, area: "Northest Side")
	end	

# Chicago: North Side

["North Center", "Lakeview", "Lincoln Park", "Avondale", 
	"Logan Square"].each do |neighborhood|
		Neighborhood.create!(name: neighborhood, area: "North Side")
	end	

# Chicago: West Side

["Humboldt Park", "West Town", "Austin", "West Garfield Park", 
	"East Garfield Park", "Near West Side", "North Lawndale", 
	"South Lawndale", "Lower West Side"].each do |neighborhood|
		Neighborhood.create!(name: neighborhood, area: "West Side")
	end	

# Chicago: Downtown

["Cabrini-Green", "Gold Coast", "Goose Island", "Old Town", 
	"River West", "River North", "Streeterville", "Loop", 
	"Near East Side", "West Look Gate", "Dearborn Park", 
	"Printer's Row", "South Loop"].each do |neighborhood|
		Neighborhood.create!(name: neighborhood, area: "Downtown")
	end	

# Chicago: South Side

["Armour Square", "Douglas", "Oakland", "Fuller Park", 
	"Grand Boulevard", "Kenwood", "Washington Park", "Hyde Park", 
	"Woodlawn", "South Shore", "Bridgeport", "Greater Grand Crossing"].each do |neighborhood|
		Neighborhood.create!(name: neighborhood, area: "South Side")
	end	

# Chicago: Southwest Side

["Garfield Ridge", "Archer Heights", "Brighton Park", "McKinley Park", 
	"New City", "West Elsdon", "Gage Park", "Clearing", "West Lawn", 
	"Chicago Lawn", "West Englewood", "Englewood"].each do |neighborhood|
		Neighborhood.create!(name: neighborhood, area: "Southwest Side")
	end	

# Chicago: Far Southeast Side

["Chatham", "Avalon Park", "South Chicago", "Burnside", "Calumet Heights", 
	"Roseland", "Pullman", "South Deering", "East Side", "West Pullman", 
	"Riverdale", "Hegewisch"].each do |neighborhood|
		Neighborhood.create!(name: neighborhood, area: "Far Southeast Side")
	end	

# Chicago: Far Southwest Side

["Ashburn", "Auburn Gresham", "Beverly", "Washington Heights", 
	"Mount Greenwood", "Morgan Park"].each do |neighborhood|
		Neighborhood.create!(name: neighborhood, area: "Far Southwest Side")
	end	

=end
















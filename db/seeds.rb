# Create US cities
=begin
City.delete_all    #first deletes existing records before creating new ones from array below
["Albuquerque", "Anchorage", "Arlington", "Athens", "Atlanta", "Aurora, CO", "Austin", 
	"Bakersfield", "Baltimore", "Baton Rouge", "Birmingham", "Cape Coral", "Charleston", 
	"Charlotte", "Chattanooga", "Chesapeake", "Chicago", "Cincinnati", "Cleveland", "Colorado Springs", 
	"Columbus, OH", "Corpus Christi", "Dallas", "Denver", "Des Moines", "Detroit", 
	"Durham", "El Paso", "Fayetteville", "Fort Wayne", "Fort Worth", "Fresno", "Greensboro", 
	"Henderson", "Houston", "Huntsville", "Indianapolis", "Jackson", "Jacksonville", 
	"Kansas City, MO", "Knoxville", "Laredo", "Las Vegas", "Lexington", "Lincoln", "Little Rock", "Los Angeles", 
	"Louisville", "Lubbock", "Memphis", "Milwaukee", "Mobile", "Montgomery", "Nashville", "New Orleans", 
	"New York City", "Oklahoma City", "Omaha", "Orlando", "Philadelphia", 
	"Phoenix Metro. Area", "Plano", "Portland", "Raleigh", "Riverside", "Sacramento", "Salt Lake City", "San Antonio", 
	"San Diego", "San Jose", "Savannah", "Seattle", "Springfield", "Tallahassee", "Tampa", 
	"Toledo", "Tucson", "Tulsa", "Virginia Beach", "Waco", "Wichita", "Winston-Salem"].each do |city|
	City.create!(name: city)	
	end
puts "Cities"

# Create chicago areas

["Far North Side", "Northwest Side", "North Side", "West Side", 
	"Downtown", "South Side", "Southwest Side", "Far Southeast Side", 
	"Far Southwest Side"].each do |area|
		Area.create!(name: area, city_id: 17)
	end
puts "Created Chicago Areas"	



# Create city of Chicago neighborhoods	

# Chicago: Far North Side

["Rogers Park", "West Ridge", "Uptown", "Lincoln Square", 
	"Edison Park", "Norwood Park", "Jefferson Park", 
	"Forest Glen", "North Park", "Albany Park", "O'Hare", "Edgewater", "Evanston"].each do |neighborhood|
		Neighborhood.create!(name: neighborhood, area_id: 1)
	end	
puts "Chicago: Far North Side"	

# Chicago: Northwest Side

["Portage Park", "Irving Park", "Dunning", "Montclare", 
	"Belmont Cragin", "Hermosa"].each do |neighborhood|
		Neighborhood.create!(name: neighborhood, area_id: 2)
	end
puts "Chicago: Northwest Side"	

# Chicago: North Side

["North Center", "Lakeview", "Lincoln Park", "Avondale", 
	"Logan Square"].each do |neighborhood|
		Neighborhood.create!(name: neighborhood, area_id: 3)
	end	
puts "Chicago: North Side"	

# Chicago: West Side

["Humboldt Park", "West Town", "Austin", "West Garfield Park", 
	"East Garfield Park", "Near West Side", "North Lawndale", 
	"South Lawndale", "Lower West Side"].each do |neighborhood|
		Neighborhood.create!(name: neighborhood, area_id: 4)
	end	
puts "Chicago: West Side"	

# Chicago: Downtown

["Cabrini-Green", "Gold Coast", "Goose Island", "Old Town", 
	"River West", "River North", "Streeterville", "Loop", 
	"Near East Side", "West Look Gate", "Dearborn Park", 
	"Printer's Row", "South Loop"].each do |neighborhood|
		Neighborhood.create!(name: neighborhood, area_id: 5)
	end	
puts "Chicago: Downtown"	

# Chicago: South Side

["Armour Square", "Douglas", "Oakland", "Fuller Park", 
	"Grand Boulevard", "Kenwood", "Washington Park", "Hyde Park", 
	"Woodlawn", "South Shore", "Bridgeport", "Greater Grand Crossing"].each do |neighborhood|
		Neighborhood.create!(name: neighborhood, area_id: 6)
	end
puts "Chicago: South Side"	

# Chicago: Southwest Side

["Garfield Ridge", "Archer Heights", "Brighton Park", "McKinley Park", 
	"New City", "West Elsdon", "Gage Park", "Clearing", "West Lawn", 
	"Chicago Lawn", "West Englewood", "Englewood"].each do |neighborhood|
		Neighborhood.create!(name: neighborhood, area_id: 7)
	end
puts "Chicago: Southwest side"	

# Chicago: Far Southeast Side

["Chatham", "Avalon Park", "South Chicago", "Burnside", "Calumet Heights", 
	"Roseland", "Pullman", "South Deering", "East Side", "West Pullman", 
	"Riverdale", "Hegewisch"].each do |neighborhood|
		Neighborhood.create!(name: neighborhood, area_id: 8)
	end	
puts "Chicago: Far SouthEast Side"

# Chicago: Far Southwest Side

["Ashburn", "Auburn Gresham", "Beverly", "Washington Heights", 
	"Mount Greenwood", "Morgan Park"].each do |neighborhood|
		Neighborhood.create!(name: neighborhood, area_id: 9)
	end	
puts "Chicago Far Southwest Side"

# Seed condos in Near East Side, Chicago

[["Randolph Tower City Apartments", "188 W. Randolph", "60601", "17", "5", "42"], 
["Stanford Apartments", "1164 North Dearborn", "60601", "17", "5", "42"],
["Millenium Park Plaza", "151 North Michigan Avenue", "60601", "17", "5", "42"],
["North Harbor Tower", "175 North Harbor Drive", "60601", "17", "5", "42"],
["Columbus Plaza Apartments", "233 East Wacker Drive", "60601", "17", "5", "42"],
["Park Millenium", "222 North Columbus Drive", "60601", "17", "5", "42"],
["MDA City Apartments", "63 East Lake Street", "60601", "17", "5", "42"],
["The Aqua", "225 North Columbus Drive", "60601", "17", "5", "42"],
["200 North Dearborn", "200 North Dearborn", "60601", "17", "5", "42"],
["The Tides", "360 East South Water Street", "60601", "17", "5", "42"],
["The Shoreham", "400 East South Water Street", "60601", "17", "5", "42"],
["Doral Michigan Avanue", "155 North Michigan Avenue", "60601", "17", "5", "42"],
["Harbor Point", "155 Harbor Drive North", "60601", "17", "5", "42"],
["Century Tower", "182 West Lake Street", "60601", "17", "5", "42"],
["Joffrey Tower", "8 East Randolph", "60601", "17", "5", "42"],
["The Chandler", "450 East Waterside Drive", "60601", "17", "5", "42"],
["The Parkshore", "195 North Harbor Drive", "60601", "17", "5", "42"],
["The Elm at Clark", "1122 North Clark Street", "60610", "17", "5", "35"]].each do |name, add, zip, city, area, hood|

	Building.create!(name:name, address: add, zip: zip, city_id: city, area_id: area, neighborhood_id: hood)

end

puts "Seed Chicago buildings"

#=end

# Seed some rental data

[["3300", "2", "2", "20", "150", "16", "1", ""],
["1850", "studio", "studio", "7", "125", "16", "1", ""],
["1790", "studio", "studio", "3", "130", "16", "1", ""]].each do |rent, beds, baths, floor, utilities, building, user, notes|
	Rent.create!(rent: rent, beds: beds, baths: baths, floor: floor, utilities: utilities, building_id: building, user_id: user, notes: notes)
end	

puts "Seed chicago buildings rental data"

puts "all seeds complete!"

=end


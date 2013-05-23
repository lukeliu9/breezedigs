# Create US cities
#=begin
City.delete_all    #first deletes existing records before creating new ones from array below
[["New York", "NY", "8489713"], ["Detroit", "MI", "5901160"], ["Chicago", "IL", "2901633"], ["Houston", "TX", "2400133"], ["Phoenix", "AZ", "1657153"], 
["Philadelphia", "PA", "1656138"], ["San Diego", "CA", "1582739"], ["San Antonio", "TX", "1391022"], ["Dallas", "TX", "1383776"], ["San Jose", "CA", "1098132"], 
["Los Angeles", "CA", "4083122"], ["Jacksonville", "FL", "822401"], ["San Francisco", "CA", "817411"], ["Indianapolis", "IN", "798382"], ["Austin", "TX", "757688"], 
["Columbus", "OH", "754885"], ["Fort Worth", "TX", "703073"], ["Charlotte", "NC", "687456"], ["Memphis", "TN", "669651"], ["Baltimore", "MD", "636919"], 
["El Paso", "TX", "613190"], ["Boston", "MA", "609023"], ["Milwaukee", "WI", "604477"], ["Denver", "CO", "598707"], ["Seattle", "WA", "598541"], 
["Nashville", "TN", "596462"], ["Washington", "DC", "591833"], ["Las Vegas", "NV", "558383"], ["Portland", "OR", "557706"], ["Louisville", "KY", "557224"], 
["Oklahoma City", "OK", "551789"], ["Tucson", "AZ", "541811"], ["Atlanta", "GA", "537958"], ["Albuquerque", "NM", "521999"], ["Fresno", "CA", "476050"], 
["Sacramento", "CA", "463794"], ["Long Beach", "CA", "463789"], ["Kansas City", "MO", "451572"], ["Omaha", "NE", "438646"], ["Cleveland", "OH", "433748"], 
["Virginia Beach", "VA", "433746"], ["Miami", "FL", "413201"], ["Oakland", "CA", "404155"], ["Raleigh", "NC", "392552"], ["Tulsa", "OK", "385635"], 
["Minneapolis", "MN", "382605"], ["Colorado Springs", "CO", "380307"], ["Honolulu", "HI", "374676"], ["Arlington", "TX", "374417"], ["Wichita", "KS", "366046"], 
["St. Louis", "MO", "354361"], ["Tampa", "FL", "340882"], ["Santa Ana", "CA", "339130"], ["Anaheim", "CA", "335288"], ["Cincinnati", "OH", "333336"], 
["Bakersfield", "CA", "321078"], ["Aurora", "CO", "319057"], ["New Orleans", "LA", "311853"], ["Pittsburgh", "PA", "310037"], ["Riverside", "CA", "295357"], 
["Toledo", "OH", "293201"], ["Stockton", "CA", "287037"], ["Corpus Christi", "TX", "286462"], ["Lexington", "KY", "282114"], ["St. Paul", "MN", "279590"], 
["Anchorage", "AK", "279243"], ["Newark", "NJ", "278980"], ["Buffalo", "NY", "270919"], ["Plano", "TX", "267480"], ["Henderson", "NV", "257729"], 
["Lincoln", "NE", "254001"], ["Fort Wayne", "IN", "253691"], ["Greensboro", "NC", "250642"], ["Chandler", "AZ", "247140"], ["St. Petersburg", "FL", "245314"], 
["Jersey City", "NJ", "241114"], ["Norfolk", "VA", "234220"], ["Madison", "WI", "231916"], ["Orlando", "FL", "230519"], ["Birmingham", "AL", "228798"], 
["Baton Rouge", "LA", "223689"], ["Durham", "NC", "223284"], ["Laredo", "TX", "221659"], ["Lubbock", "TX", "220483"], ["Chesapeake", "VA", "220111"], 
["Chula Vista", "CA", "219318"], ["Garland", "TX", "218577"], ["Winston-Salem", "NC", "217600"], ["North Las Vegas", "NV", "217253"], ["Reno", "NV", "217016"], 
["Gilbert", "AZ", "216449"], ["Hialeah", "FL", "210542"], ["Arlington", "VA", "209969"], ["Akron", "OH", "207510"], ["Irvine", "CA", "207500"], 
["Rochester", "NY", "206886"], ["Boise", "ID", "205314"], ["Modesto", "CA", "202967"], ["Fremont", "CA", "202867"], ["Montgomery", "AL", "202696"], ["Spokane", "WA", "202319"], 
["Richmond", "VA", "202002"], ["Yonkers", "NY", "201588"], ["Irving", "TX", "201358"], ["Shreveport", "LA", "199729"], ["San Bernardino", "CA", "198580"], 
["Tacoma", "WA", "197181"], ["Glendale", "CA", "197176"], ["Des Moines", "IA", "197052"], ["Augusta", "GA", "194149"], ["Grand Rapids", "MI", "193396"], 
["Huntington Beach", "CA", "192620"], ["Mobile", "AL", "191022"], ["Moreno Valley", "CA", "190871"], ["Little Rock", "AR", "189515"], ["Portland", "ME", "187236"], 
["Columbus", "GA", "186984"], ["Oxnard", "CA", "185717"], ["Fontana", "CA", "184984"], ["Knoxville", "TN", "184802"], ["Fort Lauderdale", "FL", "183126"], 
["Salt Lake City", "UT", "181698"], ["Newport News", "VA", "179614"], ["Huntsville", "AL", "176645"], ["Tempe", "AZ", "175523"], ["Brownsville", "TX", "175494"], 
["Worcester", "MA", "175011"], ["Fayetteville", "NC", "174091"], ["Jackson", "MS", "173861"], ["Tallahassee", "FL", "171922"], ["Aurora", "IL", "171782"], 
["Ontario", "CA", "171691"], ["Providence", "RI", "171557"], ["Lewiston", "ME", "171231"], ["Rancho Cucamonga", "CA", "171176"], ["Chattanooga", "TN", "170880"], 
["Oceanside", "CA", "169684"], ["Santa Clarita", "CA", "169500"], ["Bangor", "ME", "165796"], ["Vancouver", "WA", "163186"], ["Grand Prairie", "TX", "160641"], 
["Peoria", "AZ", "157960"], ["Rockford", "IL", "157272"], ["Cape Coral", "FL", "156835"], ["Springfield", "MO", "156206"], ["Santa Rosa", "CA", "155796"], 
["Sioux Falls", "SD", "154997"], ["Port St. Lucie", "FL", "154353"], ["Dayton", "OH", "154200"], ["Salem", "OR", "153435"], ["Brunswick", "ME", "152699"], 
["Springfield", "MA", "150640"], ["Eugene", "OR", "150104"], ["Corona", "CA", "149923"], ["Pasadena", "TX", "146439"], ["Joliet", "IL", "146125"], 
["Pembroke Pines", "FL", "145661"], ["Paterson", "NJ", "145643"], ["Hampton", "VA", "145494"], ["Lancaster", "CA", "145469"], ["Alexandria", "VA", "143885"], 
["Salinas", "CA", "143640"], ["Palmdale", "CA", "143197"], ["Naperville", "IL", "143117"], ["Pasadena", "CA", "143080"], ["Kansas City", "KS", "142562"], 
["Hayward", "CA", "142061"], ["Hollywood", "FL", "141740"], ["Lakewood", "CO", "140989"], ["Torrance", "CA", "140820"], ["Syracuse", "NY", "138068"], 
["Escondido", "CA", "137103"], ["Fort Collins", "CO", "136509"], ["Bridgeport", "CT", "136405"], ["Orange", "CA", "136392"], ["Warren", "MI", "133939"], 
["Elk Grove", "CA", "133003"], ["Savannah", "GA", "132410"], ["Mesquite", "TX", "132123"], ["Fullerton", "CA", "131868"], ["McAllen", "TX", "129776"], 
["Cary", "NC", "129545"], ["Cedar Rapids", "IA", "128056"], ["Sterling Heights", "MI", "127160"], ["Columbia", "SC", "127029"], ["Coral Springs", "FL", "125783"], 
["Carrollton", "TX", "125595"], ["Elizabeth", "NJ", "124755"], ["Hartford", "CT", "124062"], ["Waco", "TX", "124009"], ["Bellevue", "WA", "123771"], ["New Haven", "CT", "123669"], 
["West Valley City", "UT", "123447"], ["Topeka", "KS", "123446"], ["Thousand Oaks", "CA", "123091"], ["El Monte", "CA", "121791"], ["McKinney", "TX", "121211"], 
["Concord", "CA", "121160"], ["Visalia", "CA", "121040"], ["Simi Valley", "CA", "120543"], ["Olathe", "KS", "119993"], ["Clarksville", "TN", "119735"], ["Denton", "TX", "119454"], 
["Stamford", "CT", "119303"], ["Provo", "UT", "118581"], ["Springfield", "IL", "117352"], ["Killeen", "TX", "116934"], ["Abilene", "TX", "116484"], ["Evansville", "IN", "116309"], 
["Gainesville", "FL", "114916"], ["Vallejo", "CA", "114729"], ["Ann Arbor", "MI", "114386"], ["Peoria", "IL", "114114"], ["Lansing", "MI", "113968"], ["Lafayette", "LA", "113656"], 
["Thornton", "CO", "113429"], ["Athens", "GA", "113398"], ["Flint", "MI", "112900"], ["Inglewood", "CA", "112714"], ["Roseville", "CA", "112660"], ["Charleston", "SC", "111978"], 
["Beaumont", "TX", "110553"], ["Independence", "MO", "110440"], ["Victorville", "CA", "110318"], ["Santa Clara", "CA", "110200"], ["Costa Mesa", "CA", "110080"], 
["Miami Gardens", "FL", "109346"], ["Manchester", "NH", "108586"], ["Miramar", "FL", "108484"], ["Downey", "CA", "107587"], ["Arvada", "CO", "107361"], ["Allentown", "PA", "107250"], 
["Westminster", "CO", "107056"], ["Waterbury", "CT", "107037"], ["Norman", "OK", "106957"], ["Midland", "TX", "106561"], ["Elgin", "IL", "106330"], ["West Covina", "CA", "105790"], 
["Clearwater", "FL", "105774"], ["Cambridge", "MA", "105596"], ["Pueblo", "CO", "104951"], ["West Jordan", "UT", "104447"], ["Round Rock", "TX", "104446"], ["Billings", "MT", "103994"], 
["Erie", "PA", "103817"], ["South Bend", "IN", "103807"], ["San Buenaventura", "CA", "103706"], ["Fairfield", "CA", "103683"], ["Lowell", "MA", "103615"], ["Norwalk", "CA", "102982"], 
["Burbank", "CA", "102968"], ["Richmond", "CA", "102285"], ["Pompano Beach", "FL", "101943"], ["High Point", "NC", "101835"], ["Murfreesboro", "TN", "101753"], 
["Lewisville", "TX", "101624"], ["Richardson", "TX", "101589"], ["Daly City", "CA", "101514"], ["Berkeley", "CA", "101371"], ["Gresham", "OR", "101221"], ["Wichita Falls", "TX", "101202"], 
["Green Bay", "WI", "101025"], ["Davenport", "IA", "100827"], ["Palm Bay", "FL", "100786"], ["Columbia", "MO", "100733"], ["Portsmouth", "VA", "100577"], ["Rochester", "MN", "100413"], 
["Antioch", "CA", "100219"]].each do |name, state, pop|
	City.create!(name: name, state: state, population: pop)	
	end
puts "Cities"
#=begin
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

Rent.delete_all

[["3300", "2", "2", "20", "150", "16", "1", ""],
["1850", "studio", "1", "7", "125", "16", "1", ""],
["1790", "studio", "1", "3", "130", "16", "1", ""]].each do |rent, beds, baths, floor, utilities, building, user, notes|
	Rent.create!(rent: rent, beds: beds, baths: baths, floor: floor, utilities: utilities, building_id: building, user_id: user, notes: notes)
end	

puts "Seed chicago buildings rental data"

# Seed reviews

# Seed areas for U.S. cities
=begin
# Atlanta areas
[["Downtown"], ["Midtown"], ["West Midtown"], ["East Side"], ["Southeastern Atlanta"], ["Southwestern Atlanta"], ["Northwestern Atlanta"], ["Buckhead"]].each do |name|
	Area.create!(name: name, city_id: )
end
# Miami areas
[["Allapattah"], ["Brickell"], ["Buena Vista"], ["Civic Center"], ["Coconut Grove"], ["Coral Way"], ["Design District"], ["Downtown"], ["Edgewater"], 
["Flagami"], ["Grapeland Heights"], ["Liberty City"], ["Little Haiti"], ["Little Havana"], ["Lummus Park"], ["Midtown"], ["Omni"], ["Overtown"], 
["Park West"], ["The Roads"], ["Upper East Side"], ["Venetian Islands"], ["Virginia Key"], ["West Flagler"], ["Wynwood"]].each do |name|
	Area.create!(name: name, city_id: )
end
# Seattle aread
[["North Seattle"], ["Northgate"], ["Lake City"], ["Magnolia"], ["University District"], ["Ballard"], ["Central Seattle"], ["Queene Anne"], ["Capitol Hill"], 
["Lake Union"], ["Downtown"], ["Rainier Valley"], ["Beacon Hill"], ["West Seattle"], ["Delridge"], ["Stevens"], ["Madison Park"], ["Atlantic"], ["South End"]].each do |name|
	Area.create!(name: name, city_id: )
end
# Portland areas
[["Southwest"], ["Northwest"], ["North"], ["Northeast"], ["Southeast"]].each do |name|
	Area.create!(name: name, city_id: )
end	
# Austin areas
[["Downtown"], ["Georgetown"], ["Liberty Hill"], ["Hutte"], ["Taylor-Coupland"], ["Round Rock"], ["Elgin"], ["Bastrop"], ["Smithville"], ["Hays"], 
["San Marcos"], ["Hays"], ["Wimberly"], ["Dripping Springs"], ["Leander"], ["Lockhart"]].each do |name|
	Area.create!(name: name, city_id: )
end	
# Dallas areas
[["Downtown"], ["East Dallas"], ["Old East Dallas"], ["Lake Highlands"], ["North Dallas"], ["Far North Dallas"], ["Northwest Dallas"], ["Oak Cliff"], 
["Kessler"], ["Redbird"], ["Oak Lawn"], ["Pleasant Grove"], ["South Dallas"], ["West Dallas"]].each do |name|
	Area.create!(name: name, city_id: )
end	
# Boston areas
[["Allston/Brighton"], ["Back Bay"], ["Bay Village"], ["Beacon Hill"], ["Charlestown"], ["Chinatown/Leather District"], ["Dorchester"], ["Downtown"], 
["East Boston"], ["Fenway/Kenmore"], ["Hyde Park"], ["Jamaica Plain"], ["Mattapan"], ["Mission Hill"], ["North End"], ["Roslindale"], ["Roxbury"], 
["South Boston"], ["South End"], ["West End"], ["West Roxbury"]].each do |name|
	Area.create!(name: name, city_id: )
end
# San Francisco areas
[["Downtown"], ["South San Francisco"], ["San Bruno"], ["Burlingame"], ["San Mateo"], ["Foster City"], ["Menlo Park"], ["Palo Alto"], ["Redwood City"], ["Daly City"]].each do |name|
	Area.create!(name: name, city_id: )
end
# San Diego areas
[["Coronado"], ["Downtown"], ["Hillcrest"], ["La Jolla"], ["Misson Bay"], ["South Bay"], ["East County"], ["North County"]].each do |name|
	Area.create!(name: name, city_id: )
end
# Iandianapolis areas
[["Downtown"], ["Zionsville"], ["Carmel"], ["Lawrence"], ["Warren"], ["Franklin"], ["Perry"], ["Fishers"], ["Brownsburg"], ["Wayne"]].each do |name|
	Area.create!(name: name, city_id: )
end	
# Houston areas
[["Downtown"], ["South Side"], ["Southwest"], ["Southeast"], ["Northside"], ["Midtown"]].each do |name|
	Area.create!(name: name, city_id: )
end	
# Philadelphia areas
[["Center City"], ["South"], ["Southwest"], ["West"], ["Northwest"], ["Northwest"], ["Northeast"]].each do |name|
	Area.create!(name: name, city_id: )
end
# Jacksonville areas
[["Downtown"], ["Riverside/Avondale"], ["Springfield"], ["Eastside"], ["San Marco"], ["St Nicholas"], 
["Ortega"], ["Mandarin"], ["Northside"], ["Westside"], ["Arlington"], ["Southside"]].each do |name|
	Area.create!(name: name, city_id: )
end
# San Antonio areas
[["Downtown"], ["Alamo Heights"], ["Midtown"], ["Uptown"], ["North Central"], ["Far North Central"], 
["Northeast Side"], ["Northwest Side"], ["Far Northwest Side"], ["Inner West Side"], ["South Side"], ["East Side"], ["Near East Side"]].each do |name|
	Area.create!(name: name, city_id: )
end	
# Detroit areas
[["Downtown"], ["Midtown"], ["New Center Area"], ["North"], ["East"], ["West"], ["Southwest/Near West"]].each do |name|
	Area.create!(name: name, city_id: )
end
# Charlotte areas
[["South Charlotte"], ["West Charlotte"], ["North Charlotte"], ["East Charlotte"], ["Center City"]].each do |name|
	Area.create!(name: name, city_id: )
end
# Memphis areas
[["Downtown"], ["Midtown"], ["North Memphis"], ["South Memphis"], ["East Memphis"]]each do |name|
	Area.create!(name: name, city_id: )
end
# Baltimore areas
[["Northwest"], ["North"], ["Northeast"], ["West"], ["Central"], ["East"], ["Southwest"], ["South"], ["Southeast"]].each do |name|
	Area.create!(name: name, city_id: )
end
# Nashville areas
[["Berry Hill"], ["Downtown"], ["Hillsboro Village"], ["Opryland/Music Valley"], ["Germantown"], ["12South"], 
["East Nashville"], ["8th Avenue South"], ["Elliston Place"], ["Green Hills"], ["The Gulch"], ["Midtown"], ["Sylvan Park"]].each do |name|
	Area.create!(name: name, city_id: )
end
# Milwaukee areas
[["North Side"], ["South Side"], ["East Side"], ["West Side"], ["Downtown"]].each do |name|
	Area.create!(name: name, city_id: )
end
# Denver areas
[["Downtown"], ["Berkeley Park"], ["Cherry Creek"], ["Colorado Springs"], ["Evergreen"], ["Five Points"], 
["Fort Collins"], ["Golden"], ["Highlands"], ["Lakewood"], ["Morrison"], ["Old South Pearl Street"], 
["Stapleton"], ["Aurora"], ["Boulder"], ["Broomfield"], ["Littleton"], ["Westminster"], ["Arvada"], 
["Castle Rock"], ["Englewood"], ["Parker"], ["Washington Park"], ["Black Hawk"], ["Capitol Hill"], ["Thornton"], 
["Commerce City"], ["Centennial"], ["Highlands Ranch"], ["Lafayette"], ["Longmont"], ["Louisville"], ["Wheat Ridge"]].each do |name|
	Area.create!(name: name, city_id: )
end
# New Orleans areas
[["East Bank"], ["New Orleans East"], ["West Bank"]].each do |name|
	Area.create!(name: name, city_id: )
end
#Oklahoma City areas
[["Downtown"], ["Midtown"], ["Uptown"], ["Inner City South"], ["Northeast OKC"], ["Northwest"], ["Westside"], ["Southside"], ["Southeast"]].each do |name|
	Area.create!(name: name, city_id: )
end
# Omaha areas
[["Downtown"], ["Midtown"], ["North Omaha"], ["South Omaha"], ["West Omaha"], ["East Omaha"]].each do |name|
	Area.create!(name: name, city_id: )
end
# Oakland areas
[["Downtown"], ["West Oakland"], ["The Temescal"], ["Lakeshore & Lake Merritt"], ["Rockridge"], ["Piedmont"], ["Laurel District"], ["Oakland Hills"]].each do |name|
	Area.create!(name: name, city_id: )
end
# Cleveland areas
[["Downtown"], ["West Cleveland"], ["South Cleveland"], ["East Cleveland"]].each do |name|
	Area.create!(name: name, city_id: )
end
# St. Louis areas
[["North"], ["Central"], ["South"], ["Florissant"], ["Hazelwood"], ["Saint Charles"], ["St. Peters"], ["Chesterfield"], ["Granite City"]].each do |name|
	Area.create!(name: name, city_id: )
end
# Orlando areas
[["Downtown"], ["Kissimmee"], ["Sanford"], ["Tavares"], ["Winter Park"], ["Apopka"], ["Oviedo"], ["Clermont"], ["Altamonte Springs"]].each do |name|
	Area.create!(name: name, city_id: )
end
# Newark areas
[["North Ward"], ["South Ward"], ["Central Ward"], ["East Ward"], ["West Ward"]].each do |name|
	Area.create!(name: name, city_id: )
end
# Long Beach areas
[["North Long Beach"], ["Poly High District"], ["West Side"], ["Wrigley"], ["The Plaza"], ["Hellman"], ["Traffic Circle"], ["Zaferia"], ["East Side"], 
["Alamitos Beach"], ["Bixby Area"], ["Belmont Heights"], ["City College Area"], ["Downtown"], ["Willmore City"], ["East Village"], ["Rose Park"]].each do |name|
	Area.create!(name: name, city_id: )
end
# Louisville areas
[["Anchorage"], ["Butchertown"], ["Cherokee Triangle"], ["Central Downtown"], ["Clifton"], ["Crescent Hill"], ["Germantown"], ["Highlands"], 
["Indian Hills"], ["Jeffersontown"], ["Lyndon"], ["Middletown"], ["Old Louisville"], ["Oldham County"], ["St Matthews"]].each do |name|
	Area.create!(name: name, city_id: )
end
# Anaheim areas
[["Downtown/Colonial District"], ["Southwest Anaheim"], ["Southeast Anaheim"], ["Northeast Anaheim"], ["Anaheim Hills"]].each do |name|
	Area.create!(name: name, city_id: )
end
# Raleigh areas
[["North Raleigh"], ["Northwest Raleigh"], ["Northeast Raleigh"], ["West Raleigh"], ["Southeast Raleigh"], ["Southwest Raleigh"], ["South Raleigh"], ["Hillsborough"], ["East Raleigh"]].each do |name|
	Area.create!(name: name, city_id: )
end
# Minneapolis areas
[["Calhoun-Isles"], ["Camden"], ["Cental"], ["Longfellow"], ["Near North"], ["Nokomis"], ["Northeast"], ["Phillips"], ["Powderhorn"], ["Southwest"], ["University"]].each do |name|
	Area.create!(name: name, city_id: )
end

puts "all seeds complete!"

=end














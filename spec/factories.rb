FactoryGirl.define do
	factory :user do
		sequence(:first_name)  { |n| "First #{n}" }
		sequence(:last_name)  { |n| "Last #{n}" }
		sequence(:email) { |n| "Person_#{n}@example.com" }
		role "mover"
		password  "foobar123"
		password_confirmation "foobar123"

		factory :admin do
			admin true
		end
	end
end 	

FactoryGirl.define do
	factory :review do
		building "The Chandler"
		pros "Great building"
		cons "Very noisy"
		overall 4
		neighborhood "Very alive at night"
		neighborhood_rating 4
		management "Magellan"
		management_rating 4
		staff "Very friendly doorman"
		staff_rating 4
		amenities "washer/dryer, dry cleaners"
		amenities_rating 4
		noise "On a busy street by a train"
		noise_rating 4
		safety "Always feel safe"
		safety_rating 4
		parking "Heated parking"
		maintenance "Always prompt"
		maintenance_rating 4
		transportation "Easy bus access"
		transportation_rating 4
		construction "Very solid & exposed concrete"
		nightlife "The Keg"
		people "Mostly families"
		user_id 1
	end
end
 
FactoryGirl.define do
	factory :building do
		name "The Chandler"
		zip "60601"
		city "Chicago"
		area "Downtown"
		neighborhood "Near East Side"
		address "450 East Waterside Drive"
		lat 15
		lon 15
		amenities "Rooftop pool, hot tub, gym, doorman, dry cleaners"
		management "Magellan"
		transportation "Bus & train"
		construction "Highest quality & modern"
		floors 35
		units 80
		built 2009
		website "www.chandler-chicago.com"
	end
end

FactoryGirl.define do
	factory :city do
		name "Chicago"
	end
end

FactoryGirl.define do
	factory :area do
		name "Downtown"
		city_id 1
	end
end

FactoryGirl.define do
	factory :neighborhood do
		name "Streeterville"
		description "Swanky"
		lat 15
		lon 15
		schools "Lane Tech"
		nightlife "Lots of nightlife"
		stores "Steps from Magnificent Mile"
		safety "Very safe"
		recreation "Navy Pier"
		area_id 1
	end
end










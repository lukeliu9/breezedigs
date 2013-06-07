FactoryGirl.define do
	factory :user do
		sequence(:first_name)  { |n| "First #{n}" }
		sequence(:last_name)  { |n| "Last #{n}" }
		sequence(:email) { |n| "Person_#{n}@example.com" }
		password  "foobar123"
		password_confirmation "foobar123"

		factory :admin do
			admin true
		end
	end
end 	

FactoryGirl.define do
	factory :review do
		building_id 1
		pros "Great building with amazing views of the lake and city. Safe neighborhood and especially good for familieis with the park nearby. Positive experience overall"
		cons "Very noisy if you are on a lower floor facing the highway. I'd recommend living either facing away from the highway or on a floor higher than 10 if you are a light sleeper"
		overall 4
		neighborhood_rating 4
		management_rating 4
		staff_rating 4
		amenities_rating 4
		noise_rating 4
		safety_rating 4
		maintenance_rating 4
		transportation_rating 4
		msm "Magellan is great"
		unitamen "washer/dryer, dry cleaners"
		nsn "On a busy street by a train"
		parktrans "Easy bus access & heated parking"
		advice "definitely would recomment living here"
		user_id 1
	end
end

FactoryGirl.define do
	factory :rent do
		building_id 1
		rent 1400
		utilities 100
		start 2003
		stop 2013
		unitnum "12B"
		floor 10
		sqft 900
		notes "none" 
		user_id 1
	end
end
 
FactoryGirl.define do
	factory :building do
		name "The Chandler"
		address "450 East Waterside Drive"
		zip "60601"
		city_id 3
		area_id 1
		neighborhood_id 1
		latitude 15.5
		longitude 87.1
		management "Magellan"
		user_id 1
	end
end

FactoryGirl.define do
	factory :city do
		name "Chicago"
		state "IL"
		population 200000
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
		area_id 1
	end
end










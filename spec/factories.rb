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
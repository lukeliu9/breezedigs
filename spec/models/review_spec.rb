require 'spec_helper'

describe Review do

	before do
		@review = FactoryGirl.build(:review)
	end	

	it { should respond_to(:building)}
	it { should respond_to(:pros)}
	it { should respond_to(:cons)}
	it { should respond_to(:overall)}
	it { should respond_to(:neighborhood_rating)}
	it { should respond_to(:management_rating)}
	it { should respond_to(:staff_rating)}
	it { should respond_to(:amenities_rating)}
	it { should respond_to(:noise_rating)}
	it { should respond_to(:safety_rating)}
	it { should respond_to(:maintenance_rating)}
	it { should respond_to(:transportation_rating)}
	it { should respond_to(:construction_rating)}
	it { should respond_to(:user_id)}

end


















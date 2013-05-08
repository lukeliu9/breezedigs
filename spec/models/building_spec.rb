require 'spec_helper'

describe Building do

	before do
		@building = FactoryGirl.build(:building)
	end	

	it { should respond_to(:name)}
	it { should respond_to(:description)}
	it { should respond_to(:zip)}
	it { should respond_to(:city)}
	it { should respond_to(:area)}
	it { should respond_to(:neighborhood)}
	it { should respond_to(:address)}
	it { should respond_to(:lat)}
	it { should respond_to(:lon)}
	it { should respond_to(:amenities)}
	it { should respond_to(:management)}
	it { should respond_to(:transportation)}
	it { should respond_to(:construction)}
	it { should respond_to(:floors)}
	it { should respond_to(:units)}
	it { should respond_to(:built)}
	it { should respond_to(:website)}

end

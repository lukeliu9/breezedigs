require 'spec_helper'

describe Neighborhood do

	before do
		@neighborhood = FactoryGirl.build(:neighborhood)
	end	

	it { should respond_to(:name)}
	it { should respond_to(:description)}
	it { should respond_to(:city)}
	it { should respond_to(:area)}
	it { should respond_to(:lat)}
	it { should respond_to(:lon)}
	it { should respond_to(:schools)}
	it { should respond_to(:nightlife)}
	it { should respond_to(:stores)}
	it { should respond_to(:safety)}
	it { should respond_to(:recreation)}
	it { should respond_to(:buildings)}

end

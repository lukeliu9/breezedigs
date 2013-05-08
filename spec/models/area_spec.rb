require 'spec_helper'

describe Area do

 	before do
		@area = FactoryGirl.build(:area)
	end	

	it { should respond_to(:name)}
	it { should respond_to(:neighborhoods)}
	it { should respond_to(:city)}

end

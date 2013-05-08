require 'spec_helper'

describe Review do

	before do
		@city = FactoryGirl.build(:city)
	end	

	it { should respond_to(:name)}
	it { should respond_to(:areas)}
	it { should respond_to(:neighborhoods)}

end
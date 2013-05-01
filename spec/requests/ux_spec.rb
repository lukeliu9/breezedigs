require 'spec_helper'

describe "User experience specs" do

subject { page }

	describe "Write a review from home page" do
		before { visit root_path }
		it { should have_link('Write a review', href: new_review_path) }
	end

end
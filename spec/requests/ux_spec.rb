require 'spec_helper'

describe "User experience specs" do

subject { page }

	describe "Beginning a move" do
		before { visit root_path }
		it { should have_link('Get Started', href: new_move_path) }
	end

end
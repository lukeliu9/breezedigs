require 'spec_helper'

describe "User Athentication - Registration & Login/Logout" do

subject { page }

	describe "signin page" do
		before { visit new_user_session_path }

		it { have_selector('h2', 'Sign in') }
		it { have_selector('title', full_title('Sign in')) }
	end

	describe "signin" do
		before { visit new_user_session_path }

		describe "with invalid information" do
			before { click_button "Sign in" }

			it { have_selector('title', 'Sign in') }
			it { have_error_message('Invalid') }
		end

		describe "with valid information" do
			let(:user) { FactoryGirl.create(:user) }
			before { sign_in user }

			it { should have_link('My Reviews') }
			it { should have_link('My Move') } #add href later
			it { should have_link('Edit Profile', href: edit_user_registration_path(user)) }
			it { should have_link('Sign out', href: destroy_user_session_path) }

			it { should_not have_link('Sign in', href: new_user_session_path) }

			describe "followed by signout" do
				before { click_link "Sign out" }
				it { should have_link('Sign in') }
			end
		end

	end

	describe "signup page" do
		before { visit new_user_registration_path }

		it { should have_selector('h2', text: 'Sign up')}
		it { should have_selector('title', text: full_title('Sign up'))}
	end

	describe "Signup" do
		before { visit new_user_registration_path }
		let(:submit) { "Create my account" }

		describe "with invalid information" do
			it "should not create a user" do
				expect { click_button submit }.not_to change(User, :count)
			end

		end

		describe "with valid information" do
			before do
				fill_in "user_first_name",			with: "Jim"
				fill_in "user_last_name",			with: "Beam"
				fill_in "user_email",				with: "user@example.com"
				fill_in "user_password",				with: "foobar123"
				fill_in "user_password_confirmation",			with: "foobar123"	
				find(:xpath, "//input[@id='user_role']").set "mover"
			end

			it "should create a user" do
				expect { click_button submit }.to change(User, :count).by(1)
			end

			describe "After successful signup" do
				before { click_button submit }
				let(:user) { User.find_by_email('user@example.com') }

				it { should have_selector('h1', text: "Jim") }
				it { should have_selector('div.alert.alert-success', text: 'successfully') }

				it { should have_link('Sign out') }

			end

		end
	end

end
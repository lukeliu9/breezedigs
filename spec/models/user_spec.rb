require 'spec_helper'

describe User do

  before do
	 @user = User.new(first_name: "Example", last_name: "user", email: "user@example.com", password: "foobar", password_confirmation: "foobar") 
	 request.env["devise.mapping"] = Devise.mappings[:user] 
  	 request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:twitter]
	end

	subject { @user }

	it { should respond_to(:first_name) }
	it { should respond_to(:last_name) }
	it { should respond_to(:email) }
	it { should respond_to(:password_digest) }
	it { should respond_to(:password) }
	it { should respond_to(:password_confirmation) }

	describe "When first name is not present" do
		before { @user.first_name = " " }
		it { should_not be_valid }
	end

	describe "When last name is not present" do
		before { @user.last_name = " " }
		it { should_not be_valid }
	end

	describe "When email is not present" do
		before { @user.email = " "}
		it { should_not be_valid }
	end

	describe "When password is not present" do
		before { @user.password = @user.password_confirmation = " "}
		it { should_not be_valid }
	end	

	describe "When password doesn't match confirmation" do
		before { @user.password_confirmation = "mismatch" }
		it { should_not be_valid }
	end

	describe "When password is nil" do
		before { @user.password_confirmation = nil }
		it { should_not be_valid }
	end

	describe "When email format is invalid" do
		it "should be invalid" do
			addresses = %w[user@foo,com user_at_foo.org example.user@foo. foo@bar_baz.com foo@bar+baz.com]
			addresses.each do |invalid_address|
				@user.email = invalid_address
				@user.should_not be_valid
			end
		end
	end
end

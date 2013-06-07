require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the UsersHelper. For example:
#
# describe UsersHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe UsersHelper do
  OmniAuth.config.test_mode = true
  OmniAuth.config.mock_auth[:twitter] = {
    'uid' => '1337',
    'provider' => 'twitter',
    'info' => {
      'name' => 'John Smith'
    }
  }
end

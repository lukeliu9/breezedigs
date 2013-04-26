class Profile < ActiveRecord::Base
  attr_accessible :address1, :address2, :city, :employer, :income, :phone, :position, :savings, :ssn, :user_id, :zip
end

class Rent < ActiveRecord::Base
  attr_accessible :baths, :beds, :floor, :rent, 
  :sqft, :utilities, :building_id, :user_id, :notes

  belongs_to :building
  belongs_to :user

end

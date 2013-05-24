class Contribution < ActiveRecord::Base
  attr_accessible :building_id, :floorplan_id, :photo_id, :rent_id, :review_id, :user_id
end

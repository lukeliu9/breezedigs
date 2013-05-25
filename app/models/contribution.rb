class Contribution < ActiveRecord::Base
  attr_accessible :building_id, :floorplan_id, :photo_id, :rent_id, :review_id, :user_id

  belongs_to :user
  belongs_to :building
  belongs_to :contributable, polymorphic: true

end

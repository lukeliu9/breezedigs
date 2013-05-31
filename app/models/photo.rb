class Photo < ActiveRecord::Base
  attr_accessible :description, :image, :building_id
  
  belongs_to :user
  belongs_to :building
 
end

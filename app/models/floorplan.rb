class Floorplan < ActiveRecord::Base
  attr_accessible :description, :image, :title

  belongs_to :building
  belongs_to :user
  
end

class Photo < ActiveRecord::Base
  attr_accessible :description, :image, :building_id

  has_attached_file :image, :default_url => "/images/:style/nobuildingimage.png", :path => "app/public/system/images/:id/:style/:basename.:extension"

  belongs_to :user
  belongs_to :building

  validates :image, presence: true
 
end

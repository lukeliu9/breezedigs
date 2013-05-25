class Photo < ActiveRecord::Base
  attr_accessible :description, :image, :building_id

  # mount_uploader :photo, ImageUploader
end

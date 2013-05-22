class Photos < ActiveRecord::Base
  attr_accessible :description, :image

  belongs_to :building
  belongs_to :user

  mount_uploader :image, ImageUploader

end

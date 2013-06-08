class Photo < ActiveRecord::Base
  attr_accessible :description, :image, :building_id

  has_attached_file :image, 
  :default_url => "/images/:style/nobuildingimage.png",
  :storage => :s3,
  :s3_credentials => {
      :bucket => ENV['AWS_BUCKET'],
      :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
  },
  :path => "/images/:id.:extension"

  belongs_to :user
  belongs_to :building

  validates :image, presence: true
 
end

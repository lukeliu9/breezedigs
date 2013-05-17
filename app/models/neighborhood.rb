class Neighborhood < ActiveRecord::Base
  attr_accessible :name, :area_id

  belongs_to :area
  has_many :buildings

  validates :name, 			   presence: true
  validates :area_id,      presence: true, numericality: true

end

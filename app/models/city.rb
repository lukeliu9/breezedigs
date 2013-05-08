class City < ActiveRecord::Base
  attr_accessible :name, :neighborhoods, :neighborhood_id, :areas

  has_many :areas

  validates :name, 				presence: true
  validates :areas, 			presence: false
  validates :neighborhoods, 	presence: false

end

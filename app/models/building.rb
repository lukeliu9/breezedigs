class Building < ActiveRecord::Base
  attr_accessible :address, :amenities, :built, :city, :description, :floors, 
  :lat, :lon, :name, :area, :neighborhood, :state, :units, :website, :zip, 
  :management, :construction, :transportation, :slug

  has_many :reviews

  validates :name, 				presence: true, uniqueness: true
  validates :description, 		presence: false
  validates :zip, 				presence: true, zip: true
  validates :city, 				presence: true
  validates :area, 				presence: true
  validates :neighborhood, 		presence: true
  validates :address, 			presence: true, uniqueness: true
  validates :lat, 				presence: false, numericality: true, uniqueness: true
  validates :lon, 				presence: false, numericality: true, uniqueness: true
  validates :amenities, 		presence: false
  validates :management, 		presence: false
  validates :transportation, 	presence: false
  validates :construction, 		presence: false
  validates :floors, 			presence: false
  validates :units, 			presence: false
  validates :built, 			presence: false
  validates :website, 			presence: false, uniqueness: true

  searchable do
  	text :name
  	text :address
  	text :city
  	text :area
  	text :neighborhood
  	text :zip
  end

  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]

end

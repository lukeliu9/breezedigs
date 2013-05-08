class Neighborhood < ActiveRecord::Base
  attr_accessible :city, :area, :demographic, :description, :lat, :lon, :name, :nightlife, :safety, :schools, :state, :stores

  belongs_to :area

  validates :name, 			    presence: true
  validates :description, 	presence: false
  validates :city, 			    presence: false
  validates :area, 		     	presence: false
  validates :lat, 			    presence: false, numericality: true
  validates :lon, 			    presence: false, numericality: true
  validates :schools, 		  presence: false
  validates :nightlife, 	  presence: false
  validates :stores, 		    presence: false
  validates :safety, 		    presence: false
  validates :recreation, 	  presence: false
  validates :buildings, 	  presence: false

end

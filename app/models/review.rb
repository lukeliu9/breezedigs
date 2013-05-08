class Review < ActiveRecord::Base
  attr_accessible :building, :pros, :cons, :overall, :neighborhood, :neighborhood_rating, 
  :management, :management_rating, :staff, :staff_rating, :amenities, :amenities_rating, 
  :noise, :noise_rating, :safety, :safety_rating, :parking, :maintenance, :maintenance_rating, 
  :transportation, :transportation_rating, :construction, :nightlife, :people, :floor, 
  :view, :rent, :beds, :baths, :user_id

  belongs_to :buildings

  validates :building, 				      presence: true
  validates :pros, 					        presence: true
  validates :cons, 					        presence: true
  validates :overall, 				      presence: true
  validates :neighborhood, 			    presence: true
  validates :neighborhood_rating, 	presence: true, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :management, 			      presence: false
  validates :management_rating, 	  presence: false, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :staff, 				        presence: false
  validates :staff_rating, 			    presence: false, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :amenities, 			      presence: false
  validates :amenities_rating, 		  presence: false, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :noise, 				        presence: false
  validates :noise_rating, 			    presence: false, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :safety, 				        presence: false
  validates :safety_rating, 		    presence: false, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :parking, 				      presence: false
  validates :maintenance, 			    presence: false
  validates :maintenance_rating, 	  presence: false, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :transportation, 		    presence: false
  validates :transportation_rating, presence: false, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :construction, 			    presence: false
  validates :nightlife, 			      presence: false
  validates :people, 				        presence: false
  validates :floor, 				        presence: false, numericality: { only_integer: true, greater_than: 0 }
  validates :view, 					        presence: false
  validates :rent, 					        presence: false, numericality: { only_integer: true, greater_than: 0 }
  validates :beds, 					        presence: false, numericality: { only_integer: true, greater_than: 0 }
  validates :baths, 				        presence: false, numericality: { only_integer: true, greater_than: 0 }
  validates :user_id, 				      presence: false, numericality: { only_integer: true }

end







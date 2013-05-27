class Review < ActiveRecord::Base
  attr_accessible :building_id, :pros, :cons, :overall, :neighborhood_rating, 
  :management_rating, :staff_rating, :amenities_rating, 
  :noise_rating, :safety_rating, :maintenance_rating, :transportation_rating, 
  :msm, :nsn, :parktrans, :unitamen, :advice, :user_id, :status, :identity

  belongs_to :building, counter_cache: true
  belongs_to :user

  validates :building_id, 				  presence: true
  validates :pros, 					        presence: true
  validates :cons, 					        presence: true
=begin
  validates :overall, 				      presence: true  
  validates :neighborhood_rating, 	presence: true, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :management_rating, 	  presence: false, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :staff_rating, 			    presence: false, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :amenities_rating, 		  presence: false, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :noise_rating, 			    presence: false, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :safety_rating, 		    presence: false, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :maintenance_rating, 	  presence: false, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :transportation_rating, presence: false, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :user_id, 				      presence: false, numericality: { only_integer: true }
=end

def self.average_review_rating(rating)
  return nil if self.blank?
  self.average(rating)
end

def average_review_rating(rating)
  return nil if self.blank?
  self.average(rating)
end

end






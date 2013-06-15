class Review < ActiveRecord::Base
  attr_accessible :building_id, :pros, :cons, :overall, :neighborhood_rating, 
  :management_rating, :staff_rating, :amenities_rating, 
  :noise_rating, :safety_rating, :maintenance_rating, :transportation_rating, 
  :msm, :nsn, :parktrans, :unitamen, :advice, :user_id, :status, :identity, :start, :stop, :flagged

  belongs_to :building, counter_cache: true
  belongs_to :user

  validates :building_id, 				  presence: true
  validates :pros, 					        presence: true, length: {minimum: 75} 
  validates :cons, 					        presence: true, length: {minimum: 75}
  validates :overall, 				      presence: true, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :start,                 presence: true
  validates :stop,                  presence: true
  validates :management_rating,     allow_blank: true, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :neighborhood_rating, 	allow_blank: true, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :management_rating, 	  allow_blank: true, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :staff_rating, 			    allow_blank: true, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :amenities_rating, 		  allow_blank: true, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :noise_rating, 			    allow_blank: true, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :safety_rating, 		    allow_blank: true, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :maintenance_rating, 	  allow_blank: true, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :transportation_rating, allow_blank: true, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :user_id,               uniqueness: { scope: :building_id, message: "Users may only write one review per building" }

def self.average_review_rating(rating)
  return nil if self.blank?
  self.average(rating)
end

def average_review_rating(rating)
  return nil if self.blank?
  self.average(rating)
end

def self.get_recent_reviews(number)
  self.order('created_at desc').limit(number)
end

end






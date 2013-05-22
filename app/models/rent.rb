class Rent < ActiveRecord::Base
  attr_accessible :baths, :beds, :floor, :rent, 
  :sqft, :utilities, :building_id, :user_id, :notes, :recency, :unitnum

  belongs_to :building
  belongs_to :user

  validates :rent, 		presence: true, numericality: { only_integer: true }
  validates :utilities,	presence: true, numericality: { only_integer: true }
  validates :beds,		presence: true
  validates :baths,		presence: true
  validates :unitnum,	presence: true
  validates :recency,	presence: true

  def self.average_for(beds, baths, metric)
 	 where(beds: beds, baths: baths).average(metric)
  end

  def self.get_rents(beds, baths)
  	where(beds: beds, baths: baths)
  end

  def self.get_rents_max(beds, baths)
 	 where(beds: beds, baths: baths).maximum(:rent)
  end

  def self.get_rents_min(beds, baths)
 	 where(beds: beds, baths: baths).minimum(:rent)
  end

end

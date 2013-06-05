class Rent < ActiveRecord::Base
  attr_accessible :baths, :beds, :floor, :rent, 
  :sqft, :utilities, :building_id, :user_id, :notes, 
  :start, :stop, :unitnum

  belongs_to :building
  belongs_to :user

  validates :rent, 		presence: true, numericality: { only_integer: true }, length: {minimum: 3, maximum: 5}
  validates :utilities,	presence: true, numericality: { only_integer: true }, length: {minimum: 2, maximum: 5}
  validates :beds,		presence: true
  validates :baths,		presence: true, numericality: { only_integer: true }
  validates :unitnum,	presence: true, length: {minimum: 1, maximum: 6}
  validates :start,		presence: true
  validates :stop,		presence: true
  validates :user_id,   uniqueness: { scope: :building_id, message: "Users may only submit one rent per building" }

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

  def self.count_rents(beds, baths)
  	where(beds: beds, baths: baths).count
  end

end

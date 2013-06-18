class Building < ActiveRecord::Base
  attr_accessible :name, :address, :city, 
  :latitude, :longitude, :area, :neighborhood, :website, :zip, 
  :management, :city_id, :area_id, :neighborhood_id, :slug, :status, :user_id, :gmaps, :nickname

  has_many :reviews, dependent: :destroy
  has_many :rents, dependent: :destroy
  has_many :photos, dependent: :destroy
  has_many :floorplans, dependent: :destroy

  belongs_to :city
  belongs_to :area
  belongs_to :neighborhood
  belongs_to :user

  validates :name, 				        presence: true, uniqueness: true
  validates :zip, 				        presence: true, zip: true 
  validates :address, 			      presence: true, uniqueness: true
  # validates :latitude, 				  allow_blank: true, numericality: true, uniqueness: true
  # validates :longitude, 				allow_blank: true, numericality: true, uniqueness: true
  # validates :management, 		    allow_blank: true
  validates :city_id,		          presence: true, numericality: { only_integer: true }
  #validates :area_id,             presence: true, numericality: { only_integer: true }
  #validates :neighborhood_id,	    presence: true, numericality: { only_integer: true }

  reverse_geocoded_by :latitude, :longitude
  geocoded_by :gmaps4rails_address
  acts_as_gmappable

  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]

  scope :has_reviews, joins{reviews.outer}.where{reviews.id != nil}
  scope :has_image, includes{photos}.where{photos.id != nil}

  def self.search_attributes(search) # Used on the home page and search header search field to search all buildings by any of its attributes
    city_search = self.joins{city}.where{(zip =~ "%#{search}%") | (name =~ "%#{search}%") | (address =~ "%#{search}%") | (nickname =~ "%#{search}%") | (city.name =~ "%#{search}%")}
    hood_search = self.joins{neighborhood}.where{ neighborhood.name =~ "%#{search}%" }
    area_search = self.joins{area}.where{ area.name =~ "%#{search}%" }
    return city_search + hood_search + area_search
  end

  def gmaps4rails_address # Gets a building's address for creating the latitude & longitude
    "#{self.address}, #{self.zip}"
  end

  def self.star_avg_image(rating)
      self.reviews.average_review_rating(rating)
  end

  def average_review_rating(rating)
    return nil if self.blank?
    self.average(rating)
  end

  def average_overall
    instance_eval { reduce(:+) / size.to_f }
  end

  def self.search_by_city(search) # Used for the individual city views to find all the buildings in a city
    self.joins{city}.where{city.name =~ "%#{search.name}%"}
  end

  def self.select_only_in_city(selection) # Used for the individual city pages to get buildings only in that city
    self.joins{city}.where{city.name =~ selection}
  end

  def find_for_count(name)
    self.select { |place| place.name == name }
  end

  def self.sort_by_reviews(array, type) # For the building results page and lets users filter results by the number of reviews for a building or the building's overall average rating
    if type == "count"
      array.sort! { |x, y| y.reviews.count <=> x.reviews.count }
    else
      array.sort! { |x, y| y.reviews.average("overall").to_f <=> x.reviews.average("overall").to_f }
    end
  end

  def self.delete_current_building(building)
    self.all.delete_if { |x| x.name == building.name }
  end

  def self.get_best_buildings(number)
    sorted = self.uniq.sort! { |x, y| y.reviews.average("overall").to_f <=> x.reviews.average("overall").to_f }
    sorted.first(number)
  end

  def self.get_worst_buildings(number)
    sorted = self.uniq.sort! { |x, y| x.reviews.average("overall").to_f <=> y.reviews.average("overall").to_f }
    sorted.first(number)
  end

  def has_at_least_n_reviews(number)

  end

  private

  def downcase_name
    self.name = self.name.downcase if self.name.present?
  end

  def downcase_address
    self.address = self.address.downcase if self.address.present?
  end

end

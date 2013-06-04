class Building < ActiveRecord::Base
  attr_accessible :name, :address, :city, 
  :latitude, :longitude, :area, :neighborhood, :website, :zip, 
  :management, :city_id, :area_id, :neighborhood_id, :slug, :status

  has_many :reviews, dependent: :destroy
  has_many :rents, dependent: :destroy
  has_many :photos, dependent: :destroy
  has_many :floorplans, dependent: :destroy

  belongs_to :city
  belongs_to :area
  belongs_to :neighborhood

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

  def gmaps4rails_address
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

  def self.search_attributes(search)
    self.joins{city}.where{(zip =~ "%#{search}%") | (name =~ "%#{search}%") | (address =~ "%#{search}%") | (city.name =~ "%#{search}%")}
  end

  def self.search_by_city(search)
    self.joins{city}.where{city.name =~ "%#{search.name}%"}
  end

  def self.select_only_in_city(selection)
    self.joins{city}.where{city.name =~ selection}
  end

  def self.has_image
    self.includes{photos}.where{photos.id != nil}
  end

  def self.select_featured(many)
    self.order("RANDOM()").first(many)
  end

  def find_for_count(name)
    self.select { |place| place.name == name }
  end

  def self.sort_by_reviews(type)
    if type == "count"
      self.all.sort! { |x, y| y.reviews.count <=> x.reviews.count }
    else
      self.all.sort! { |x, y| y.reviews.average("overall").to_f <=> x.reviews.average("overall").to_f }
    end
  end

  def self.sort_featured(type)
    if type == "count"
      self.all.sort! { |x, y| y.reviews.count <=> x.reviews.count }
    else
      self.all.sort! { |x, y| y.reviews.average("overall").to_f <=> x.reviews.average("overall").to_f }
    end
  end

  def self.delete_current_building(building)
    self.all.delete_if { |x| x.name == building.name }
  end

  private

  def downcase_name
  self.name = self.name.downcase if self.name.present?
  end

  def downcase_address
  self.address = self.address.downcase if self.address.present?
  end

end

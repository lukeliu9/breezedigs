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

  searchable do
  	text :name
  	text :address
  	text :city do
      city.name
    end
  	text :areas do
      area.name
    end
  	text :neighborhoods do
      if neighborhood.blank?
        nil
      else
        neighborhood.name
      end
    end
  	text :zip
    integer :reviews_count do
      reviews.count
    end
  end

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

  private

  def downcase_name
  self.name = self.name.downcase if self.name.present?
  end

  def downcase_address
  self.address = self.address.downcase if self.address.present?
  end

end

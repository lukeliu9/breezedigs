class City < ActiveRecord::Base
  attr_accessible :name, :state, :population

  has_many :areas
  has_many :neighborhoods, through: :areas
  has_many :buildings

  validates :name, 				presence: true

  extend FriendlyId
  friendly_id :name, use: :slugged

  def name_with_state
  	"#{name}, #{state}"
  end

  

end

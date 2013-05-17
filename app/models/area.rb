class Area < ActiveRecord::Base
  attr_accessible :name, :city_id

  belongs_to :city
  has_many :buildings
  has_many :neighborhoods

  validates :name, 				presence: true
  validates :city_id, 				presence: true

end

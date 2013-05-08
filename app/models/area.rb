class Area < ActiveRecord::Base
  attr_accessible :city, :name, :neighborhoods

  belongs_to :city
  has_many :neighborhoods

  validates :name, 				presence: true
  validates :neighborhoods, 	presence: false
  validates :city, 				presence: false

end

class Neighborhood < ActiveRecord::Base
  attr_accessible :city, :area, :demographic, :description, :lat, :lon, :name, :nightlife, :safety, :schools, :state, :stores
end

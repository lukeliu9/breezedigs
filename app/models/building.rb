class Building < ActiveRecord::Base
  attr_accessible :address, :amenities, :built, :city, :description, :floors, :lat, :lon, :name, :neighborhood, :state, :units, :website, :zip
end

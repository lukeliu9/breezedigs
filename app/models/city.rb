class City < ActiveRecord::Base
  attr_accessible :name, :neighborhoods, :neighborhood_id, :areas
end

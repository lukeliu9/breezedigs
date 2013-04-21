class Survey < ActiveRecord::Base
  attr_accessible :amenities, :budget, :city, :movein, :neighborhood, :neighborhoods, :owner, :pets, :school, :supermarket, :transportation, :user_id, :view
end

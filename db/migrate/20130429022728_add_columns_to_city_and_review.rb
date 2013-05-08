class AddColumnsToCityAndReview < ActiveRecord::Migration
  def change
  	add_column :cities, :name, :string
  	change_column :cities, :neighborhoods, :text
  	add_column :cities, :neighborhood_id, :integer
    add_column :cities, :areas, :string

  	add_column :reviews, :floor, :integer
  	add_column :reviews, :view, :text
    add_column :reviews, :identity, :string

  	add_column :neighborhoods, :city, :string
    add_column :neighborhoods, :area, :string
    
    add_column :buildings, :area, :string  
    add_column :buildings, :construction, :text
    add_column :buildings, :management, :text
    add_column :buildings, :transportation, :text
    add_column :buildings, :pets, :text

    add_column :reviews, :user_id, :integer
    add_column :reviews, :management_rating, :integer
    add_column :reviews, :staff_rating, :integer
    add_column :reviews, :safety, :integer
    add_column :reviews, :transportation, :text
    add_column :reviews, :transportation_rating, :integer
    add_column :reviews, :beds, :integer
    add_column :reviews, :baths, :integer
    
  end
end

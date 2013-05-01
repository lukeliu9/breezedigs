class AddColumnsToCityAndReview < ActiveRecord::Migration
  def change
  	add_column :cities, :name, :string
  	change_column :cities, :neighborhoods, :string
  	add_column :cities, :neighborhood_id, :integer
    add_column :cities, :areas, :string

  	add_column :reviews, :bedrooms, :integer
  	add_column :reviews, :floor, :integer
  	add_column :reviews, :bathrooms, :integer
  	add_column :reviews, :view, :string

  	add_column :neighborhoods, :city, :string
    add_column :neighborhoods, :area, :string
    
    add_column :buildings, :area, :string  
    add_column :buildings, :construction, :string  
  end
end

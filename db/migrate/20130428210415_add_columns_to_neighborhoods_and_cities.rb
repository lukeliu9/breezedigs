class AddColumnsToNeighborhoodsAndCities < ActiveRecord::Migration
  def change
  	add_column :neighborhoods, :safety_score, :integer
  	add_column :neighborhoods, :recreation_score, :integer
  	add_column :neighborhoods, :recreation, :string
  	add_column :neighborhoods, :buildings, :integer
  	add_column :cities, :neighborhoods, :integer
  end
end

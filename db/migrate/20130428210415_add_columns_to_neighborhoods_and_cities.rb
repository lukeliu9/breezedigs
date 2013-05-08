class AddColumnsToNeighborhoodsAndCities < ActiveRecord::Migration
  def change
  	add_column :neighborhoods, :recreation, :text
  	add_column :neighborhoods, :buildings, :text
  	add_column :cities, :neighborhoods, :text
  end
end

class AddColumnsToCityAndReview < ActiveRecord::Migration
  def change
  	add_column :cities, :name, :string

    add_column :reviews, :identity, :string
    
    add_column :buildings, :area_id, :integer
    add_column :buildings, :city_id, :integer
    add_column :buildings, :neighborhood_id, :integer
    add_column :buildings, :reviews_count, :integer

    add_column :reviews, :user_id, :integer
    add_column :reviews, :management_rating, :integer
    add_column :reviews, :staff_rating, :integer
    add_column :reviews, :transportation_rating, :integer
    
  end
end

class AddColumnsToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :noise_rating, :integer
    add_column :reviews, :neighborhood_rating, :integer
    add_column :reviews, :safety_rating, :integer
    add_column :reviews, :building_id, :integer
    add_column :reviews, :maintenance_rating, :integer
    add_column :reviews, :overall, :integer
    add_column :reviews, :amenities_rating, :integer
    add_column :reviews, :pros, :text
    add_column :reviews, :cons, :text
    add_column :reviews, :msm, :text
    add_column :reviews, :nsn, :text
    add_column :reviews, :parktrans, :text
    add_column :reviews, :unitamen, :text
    add_column :reviews, :advice, :text    
  end
end

class AddColumnsToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :rent, :integer
    add_column :reviews, :neighborhood, :string
    add_column :reviews, :nightlife, :text
    add_column :reviews, :management, :text
    add_column :reviews, :staff, :text
    add_column :reviews, :amenities, :text
    add_column :reviews, :noise_rating, :integer
    add_column :reviews, :neighborhood_rating, :integer
    add_column :reviews, :supermarket, :text
    add_column :reviews, :schools, :text
    add_column :reviews, :safety_rating, :integer
    add_column :reviews, :building, :string
    add_column :reviews, :parking, :text
    add_column :reviews, :maintenance, :text
    add_column :reviews, :maintenance_rating, :integer
    add_column :reviews, :construction, :text
    add_column :reviews, :noise, :text
    add_column :reviews, :people, :text
    add_column :reviews, :overall, :integer
    add_column :reviews, :amenities_rating, :integer
    add_column :reviews, :pros, :text
    add_column :reviews, :cons, :text
  end
end

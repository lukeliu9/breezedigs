class AddColumnsToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :rent, :integer
    add_column :reviews, :neighborhood, :string
    add_column :reviews, :nightlife, :string
    add_column :reviews, :management, :string
    add_column :reviews, :staff, :string
    add_column :reviews, :amenities, :string
    add_column :reviews, :pets, :string
    add_column :reviews, :noise_rating, :integer
    add_column :reviews, :neighborhood_rating, :integer
    add_column :reviews, :supermarket, :string
    add_column :reviews, :schools, :string
    add_column :reviews, :safety_rating, :integer
    add_column :reviews, :building, :integer
    add_column :reviews, :parking_rating, :string
    add_column :reviews, :parking, :string
    add_column :reviews, :maintenance, :string
    add_column :reviews, :maintenance_rating, :integer
    add_column :reviews, :construction, :string
    add_column :reviews, :construction_rating, :integer
    add_column :reviews, :noise, :string
    add_column :reviews, :people, :string
    add_column :reviews, :events, :string
    add_column :reviews, :overall, :integer
    add_column :reviews, :amenities_rating, :string
    add_column :reviews, :pros, :string
    add_column :reviews, :cons, :string
  end
end

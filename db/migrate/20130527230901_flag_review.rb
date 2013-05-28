class FlagReview < ActiveRecord::Migration
  def change
  	add_column :reviews, :flagged, :text, default: "no"
  end
end

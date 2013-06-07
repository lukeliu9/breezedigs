class Addrecencytoreview < ActiveRecord::Migration
  def change
  	add_column :reviews, :start, :integer
  	add_column :reviews, :stop, :integer
  end
end

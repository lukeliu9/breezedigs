class Addrecencytoreview < ActiveRecord::Migration
  def change
  	add_column :reviews, :start, :date
  	add_column :reviews, :stop, :date
  end
end

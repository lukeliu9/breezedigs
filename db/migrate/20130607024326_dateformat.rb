class Dateformat < ActiveRecord::Migration
  def up
  	remove_column :rents, :start
  	remove_column :rents, :stop

  	remove_column :reviews, :start
  	remove_column :reviews, :stop

  	add_column :reviews, :start, :integer
  	add_column :reviews, :stop, :integer

  	add_column :rents, :start, :integer
  	add_column :rents, :stop, :integer
  end
end

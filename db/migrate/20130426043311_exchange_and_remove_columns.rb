class ExchangeAndRemoveColumns < ActiveRecord::Migration
	def change
		remove_column :surveys, :neighborhoods
		remove_column :surveys, :neighborhood
		remove_column :surveys, :city
		add_column :moves, :neighborhoods, :string
		add_column :moves, :city, :string
	end
end

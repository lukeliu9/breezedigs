class Status < ActiveRecord::Migration
  def change
  	add_column :buildings, :status, :string
  	add_column :reviews, :status, :string
  	add_column :users, :status, :string
  end
end

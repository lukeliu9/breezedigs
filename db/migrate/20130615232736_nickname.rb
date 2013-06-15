class Nickname < ActiveRecord::Migration
  def change
  	remove_column :buildings, :alias
  	add_column :buildings, :nickname, :string
  end
end

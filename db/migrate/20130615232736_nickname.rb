class Nickname < ActiveRecord::Migration
  def change
  	add_column :buildings, :nickname, :string
  end
end

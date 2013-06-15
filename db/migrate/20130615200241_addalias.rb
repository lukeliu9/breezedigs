class Addalias < ActiveRecord::Migration
  def up
  	add_column :buildings, :alias, :string
  end
end

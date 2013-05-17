class AddSlugToCities < ActiveRecord::Migration
  def change
    add_column :cities, :slug, :string
    add_index :cities, :slug
    add_column :cities, :state, :string
  	add_column :cities, :population, :integer
  end
end

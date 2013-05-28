class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps
      t.string :name
      t.string :website
      t.string :zip

      t.timestamps
    end
  end
end

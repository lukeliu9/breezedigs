class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :address
      t.float :lat
      t.float :lon
      t.string :name
      t.string :neighborhood
      t.integer :floors
      t.string :description
      t.string :amenities
      t.string :website
      t.integer :units
      t.integer :city
      t.integer :zip
      t.string :state
      t.integer :built

      t.timestamps
    end
  end
end

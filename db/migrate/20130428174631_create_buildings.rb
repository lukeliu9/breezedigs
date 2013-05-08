class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :address
      t.decimal :lat
      t.decimal :lon
      t.string :name
      t.string :neighborhood
      t.integer :floors
      t.text :description
      t.text :amenities
      t.string :website
      t.integer :units
      t.string :city
      t.string :zip
      t.integer :built

      t.timestamps
    end
  end
end

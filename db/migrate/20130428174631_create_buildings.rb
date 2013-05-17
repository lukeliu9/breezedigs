class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :address
      t.decimal :latitude
      t.decimal :longitude
      t.string :name
      t.string :website
      t.string :zip

      t.timestamps
    end
  end
end

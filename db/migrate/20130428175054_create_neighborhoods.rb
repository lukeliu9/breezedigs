class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.string :name
      t.decimal :lat
      t.decimal :lon
      t.text :description
      t.text :schools
      t.text :nightlife
      t.text :stores
      t.text :safety

      t.timestamps
    end
  end
end

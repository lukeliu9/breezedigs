class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.string :name
      t.string :state
      t.float :lat
      t.float :lon
      t.string :description
      t.string :schools
      t.string :nightlife
      t.string :stores
      t.string :safety
      t.string :demographic

      t.timestamps
    end
  end
end

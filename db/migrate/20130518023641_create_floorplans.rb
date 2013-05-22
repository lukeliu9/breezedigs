class CreateFloorplans < ActiveRecord::Migration
  def change
    create_table :floorplans do |t|
      t.string :image
      t.string :title
      t.text :description
      t.integer :building_id

      t.timestamps
    end
  end
end

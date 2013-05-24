class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.integer :user_id
      t.integer :building_id
      t.integer :review_id
      t.integer :rent_id
      t.integer :photo_id
      t.integer :floorplan_id

      t.timestamps
    end
  end
end

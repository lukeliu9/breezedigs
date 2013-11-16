class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.has_attached_file :image
      t.text :description
      t.integer :building_id
      t.integer :user_id

      t.timestamps
    end
  end
end

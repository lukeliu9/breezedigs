class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :name
      t.string :neighborhoods
      t.string :city

      t.timestamps
    end
  end
end

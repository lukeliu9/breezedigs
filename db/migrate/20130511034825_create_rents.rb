class CreateRents < ActiveRecord::Migration
  def change
    create_table :rents do |t|
      t.integer :rent
      t.integer :floor
      t.integer :beds
      t.integer :baths
      t.integer :sqft
      t.integer :utilities
      t.integer :building_id
      t.integer :user_id
      t.text    :notes
      t.string  :unitnum
      t.date    :start
      t.date    :stop

      t.timestamps
    end
  end
end

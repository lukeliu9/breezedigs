class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.integer :user_id
      t.integer :building_id
      t.integer :contributable_id
      t.string  :contributable_type

      t.timestamps
    end
  end
end

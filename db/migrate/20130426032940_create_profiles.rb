class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :address1
      t.string :address2
      t.integer :user_id
      t.string :phone
      t.string :ssn
      t.string :employer
      t.string :position
      t.integer :income
      t.integer :savings
      t.integer :zip
      t.string :city

      t.timestamps
    end
  end
end

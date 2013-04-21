class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :neighborhoods
      t.string :city
      t.string :budget
      t.date :movein
      t.string :neighborhood
      t.string :amenities
      t.string :view
      t.string :owner
      t.string :pets
      t.string :school
      t.string :supermarket
      t.string :transportation
      t.integer :user_id

      t.timestamps
    end
  end
end

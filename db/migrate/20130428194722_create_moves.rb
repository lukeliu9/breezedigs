class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.date :date
      t.string :budget
      t.string :neighborhoods
      t.string :description

      t.timestamps
    end
  end
end

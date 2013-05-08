class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.date :date
      t.integer :budget_low
      t.integer :budget_high
      t.text :neighborhoods
      t.text :description

      t.timestamps
    end
  end
end

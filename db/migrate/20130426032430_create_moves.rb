class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.date :move_in_date
      t.integer :user_id
      t.integer :move_id

      t.timestamps
    end
  end
end

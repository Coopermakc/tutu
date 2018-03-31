class CreateCarriages < ActiveRecord::Migration[5.1]
  def change
    create_table :carriages do |t|
      t.integer :number
      t.integer :up_seats
      t.integer :down_seats
      t.integer :side_up_seats
      t.integer :side_down_seats
      t.integer :sit_seats
      t.belongs_to :train
      t.string :car_type

      t.timestamps
    end
  end
end

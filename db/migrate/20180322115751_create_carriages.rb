class CreateCarriages < ActiveRecord::Migration[5.1]
  def change
    create_table :carriages do |t|
      t.integer :number
      t.integer :up_seats
      t.integer :down_seats
      t.integer :side_up_seats
      t.integer :side_down_seats
<<<<<<< HEAD
      t.belongs_to :train
      t.string :type

=======
      t.integer :sit_seats
      t.belongs_to :train
      t.string :car_type
>>>>>>> cb6962dc82f7267f4e6d7cb01f6eadf76c639b68

      t.timestamps
    end
  end
end

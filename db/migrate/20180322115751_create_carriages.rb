class CreateCarriages < ActiveRecord::Migration[5.1]
  def change
    create_table :carriages do |t|
      t.integer :number
      t.string :car_type
      t.integer :up_places
      t.integer :down_places
      t.integer :train_id

      t.timestamps
    end
  end
end

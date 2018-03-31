class CreateTrains < ActiveRecord::Migration[5.1]
  def change
    create_table :trains do |t|
      t.string :number
      t.boolean :is_head
      t.integer :current_station_id
      t.integer :rout_id

      t.timestamps
    end
  end
end

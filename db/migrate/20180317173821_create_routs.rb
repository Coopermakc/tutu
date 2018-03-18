class CreateRouts < ActiveRecord::Migration[5.1]
  def change
    create_table :routs do |t|
      t.string :title

      t.timestamps
    end
  end
end

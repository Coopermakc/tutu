class AddIsHeadToTrain < ActiveRecord::Migration[5.1]
  def change
    add_column :trains, :is_head, :boolean
  end
end

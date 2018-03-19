class AddRoutIdToTrains < ActiveRecord::Migration[5.1]
  def change
    add_belongs_to :trains, :rout
  end
end

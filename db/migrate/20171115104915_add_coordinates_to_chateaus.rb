class AddCoordinatesToChateaus < ActiveRecord::Migration[5.0]
  def change
    add_column :chateaus, :latitude, :float
    add_column :chateaus, :longitude, :float
  end
end

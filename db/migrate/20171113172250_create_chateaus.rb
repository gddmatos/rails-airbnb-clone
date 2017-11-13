class CreateChateaus < ActiveRecord::Migration[5.0]
  def change
    create_table :chateaus do |t|
      t.string :description
      t.integer :area
      t.integer :bedrooms
      t.integer :price

      t.timestamps
    end
  end
end

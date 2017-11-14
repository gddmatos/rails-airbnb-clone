class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :chateau, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.boolean :deposit
      t.boolean :payment

      t.timestamps
    end
  end
end

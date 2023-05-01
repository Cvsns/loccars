class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :car_id
      t.datetime :starts_at
      t.datetime :ends_at
      t.boolean :accepted

      t.timestamps
    end
  end
end

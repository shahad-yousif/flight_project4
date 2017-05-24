class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :date_of_birth
      t.string :country
      t.string :phone_number
      t.string :email
      t.string :booking_type

      t.timestamps null: false
    end
  end
end

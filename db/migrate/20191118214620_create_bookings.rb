class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :grill, foreign_key: true
      t.text :address
      t.date :check_in
      t.date :check_out

      t.timestamps
    end
  end
end

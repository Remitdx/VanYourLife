class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.user_id :references
      t.van_id :references
      t.date :start_date
      t.date :end_date
      t.string :status

      t.timestamps
    end
  end
end

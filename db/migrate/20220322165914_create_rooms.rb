class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.integer :capacity
      t.integer :room_number
      t.integer :daily_price
      t.references :hotel, foreign_key: true
      t.boolean :booked

      t.timestamps
    end
  end
end

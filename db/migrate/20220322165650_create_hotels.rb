class CreateHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :hotels do |t|
      t.text :name
      t.text :address
      t.integer :rating

      t.timestamps
    end
  end
end

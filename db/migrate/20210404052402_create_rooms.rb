class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.float :length
      t.float :width
      t.boolean :taken
      t.text :image
      t.references :hotel, null: false, foreign_key: true

      t.timestamps
    end
  end
end

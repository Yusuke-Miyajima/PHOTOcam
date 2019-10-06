class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :title
      t.text :caption
      t.string :body
      t.string :lens
      t.string :genre
      t.decimal :apeture, precision: 3, scale: 1
      t.integer :shutter_speed
      t.integer :iso_setting
      t.integer :favorite_number
      t.integer :comment_number

      t.timestamps
    end
  end
end

class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :title
      t.text :caption
      t.integer :user_id
      t.integer :body_id, default: 1
      t.integer :lens_id, default: 1
      t.integer :detail_genre_id
      t.decimal :apeture, precision: 3, scale: 1
      t.integer :shutter_speed
      t.integer :iso_setting
      t.integer :favorite_number, default: 0
      t.integer :comment_number, default: 0

      t.timestamps
    end
  end
end

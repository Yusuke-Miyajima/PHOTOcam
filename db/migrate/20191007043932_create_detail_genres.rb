class CreateDetailGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :detail_genres do |t|
      t.string :genre
      t.integer :rough_genre_id

      t.timestamps
    end
    create_table :lens do |t|
      t.string :name
      t.integer :manufacturer_id
      t.integer :full_frame_support
      t.string :mount
      t.decimal :minimum_aperture, precision: 3, scale: 1
      t.decimal :maximum_aperture, precision: 3, scale: 1
      t.integer :minimum_focal_length
      t.integer :maximum_focal_length
      t.string :type
      t.string :focus_system

      t.timestamps
    end
  end
end

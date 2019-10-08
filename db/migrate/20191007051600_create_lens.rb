class CreateLens < ActiveRecord::Migration[5.2]
  def change
    create_table :lens do |t|
      t.string :name
      t.string :manufacturer
      t.boolean :full_frame_support
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

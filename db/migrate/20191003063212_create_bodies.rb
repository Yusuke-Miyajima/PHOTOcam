class CreateBodies < ActiveRecord::Migration[5.2]
  def change
    create_table :bodies do |t|
      t.string :manufacturer
      t.string :sensor_size
      t.string :mount
      t.boolean :film
      t.boolean :reflex
      t.boolean :interchangeable

      t.timestamps
    end
  end
end

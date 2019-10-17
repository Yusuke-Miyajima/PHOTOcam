class CreateManufacturers < ActiveRecord::Migration[5.2]
  def change
    create_table :manufacturers do |t|
      t.integer :manufacturer

      t.timestamps
    end
  end
end

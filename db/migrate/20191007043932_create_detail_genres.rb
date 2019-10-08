class CreateDetailGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :detail_genres do |t|
      t.string :genre

      t.timestamps
    end
  end
end

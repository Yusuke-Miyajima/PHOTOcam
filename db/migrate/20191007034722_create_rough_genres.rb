class CreateRoughGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :rough_genres do |t|
      t.string :genre

      t.timestamps
    end

    rename_column :photos, :body, :body_id
    rename_column :photos, :lens, :lens_id
    rename_column :photos, :genre, :genre_id

  	add_column :photos, :user_id, :string
  	add_column :bodies, :name, :string
  end
end

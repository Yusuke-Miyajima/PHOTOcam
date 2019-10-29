class CreateRoughGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :rough_genres do |t|
      t.string :genre

      t.timestamps
    end

  	add_column :bodies, :name, :string
  end
end

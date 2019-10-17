class Rename < ActiveRecord::Migration[5.2]
  def change
  	rename_column :photos, :genre_id, :detail_genre_id
  end
end

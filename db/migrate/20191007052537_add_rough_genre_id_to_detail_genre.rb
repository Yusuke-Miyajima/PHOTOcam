class AddRoughGenreIdToDetailGenre < ActiveRecord::Migration[5.2]
  def change
    add_column :detail_genres, :rough_genre_id, :string
  end
end

class ChangeDefaultFavoriteAndCommentNumber < ActiveRecord::Migration[5.2]
  def change
  	change_column :photos, :favorite_number, :integer, default: 0
   	change_column :photos, :comment_number, :integer, default: 0
  end
end

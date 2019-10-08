class FavoritesController < ApplicationController

	def create
		photo = Photo.find(params[:photo_id])
		favorite = current_user.favorites.new(photo_id: photo.id)
		photo.favorite_num += 1
		photo.save
		favorite.save
		redirect_to photo_path(photo)
	end

	def destroy
		photo = Photo.find(params[:photo_id])
		favorite = current_user.favorites.find_by(photo_id: photo.id)
		photo.favorite_num -= 1
		photo.save
		favorite.save
		redirect_to photo_path(photo)
	end
end

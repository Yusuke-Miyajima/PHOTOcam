class PhotosController < ApplicationController

	def index
		@photos = Photo.all
	end
# => 一旦id(1)を入れて後から編集する
	def new
		@photo = Photo.new
		@genres = DetailGenre.all
	end

	def create
		@photo = current_user.photos.new(photo_params)
		if @photo.save!
			redirect_to add_photo_path(@photo.id)
		else
			render :new
		end
	end
# => mini_exiftoolでbody,lens情報を更新する(editのようなもの)
	def add
		#require 'mini_exiftool'
		@photo = Photo.find(params[:id])
		@bodies = Body.where.not(id: '1')
		@lenses = LensSystem.where.not(id: '1')

		#p Rails.application.routes.url_helpers.rails_blob_path(@photo.image, only_path: true)
		#p @photo.image.variant

		#t = MiniExiftool.new "storage/#{@photo.image.filename}"
		#t = MiniExiftool.new url_for(@photo.image)
	end

	def show
		@photo = Photo.find(params[:id])
		@comment = Comment.new
	end

	def edit
		@photo = Photo.find(params[:id])
		@bodies = Body.where.not(id: '1')
		@lenses = LensSystem.where.not(id: '1')
		@genres = DetailGenre.all
	end

	def update
		@photo = Photo.find(params[:id])
		@photo.update(photo_params)
		redirect_to @photo
	end

	def destroy
		photo = Photo.find(params[:id])
		photo.destroy
		redirect_to user_path(current_user.id)
	end

	private
	def photo_params
		params.require(:photo).permit(:image, :title, :caption, :user_id, :body_id, :lens_system_id, :detail_genre_id, :aperture, :shutter_speed, :iso_setting, :favorite_number, :comment_number)
	end
end

class PhotosController < ApplicationController

	def index
		@photos = Photo.all
	end

	def new
		@photo = Photo.new
	end

	def create
		@photo = Photo.new(photo_params)
		if @photo.save
			redirect_to root_path
		else
			render :new
		end
	end

	def show
		@photo = Photo.find(params[:id])
	end

	def edit
		@photo = Photo.find(params[:id])
	end

	def update
		@photo = Photo.find(params[:id])
		@photo.update(photo_params)
		redirect_to @photo
	end

	private
	def photo_params
		params.require(:photo).permit(:image, :title, :caption, :user_id, :body_id, :lens_id, :genre_id, :aperture, :shutter_speed, :iso_setting, :favorite_number, :comment_number)
	end
end

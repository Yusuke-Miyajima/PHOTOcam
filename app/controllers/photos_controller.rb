class PhotosController < ApplicationController
	def new
		@photo = Photo.new
	end

	def create
		@photo = Photo.new(photo_params)
		@photo.body_id = EXIFR::JPEG::new(@photo.image).model
		@photo.aperture = EXIFR::JPEG::new(@photo.image).f_number.to_f
		@photo.shutter_speed = EXIFR::JPEG::new(@photo.image).exposure_time.to_s
		@photo.iso_setting = EXIFR::JPEG::new(@photo.image).iso_speed_ratings
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

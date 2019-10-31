class BodiesController < ApplicationController
	def index
		@all_bodies = Body.where.not(id: '1')
		@own_photo_body = Body.joins(:photos).distinct
		@bodies = []
		@own_photo_body.each do |bo|
			@bodies << bo.id
		end
		a = @bodies.sample
		@first_body = @own_photo_body.find_by(id:a)
		b = @bodies.sample
		@second_body = @own_photo_body.find_by(id:b)

		@first_body_photo = @first_body.photos
		@first_body_photos = []
		@first_body_photo.each do |f_bo|
			@first_body_photos << f_bo.id
		end
		fbp_a = @first_body_photos.sample
		@first_first_body_photo = @first_body_photo.find_by(id:fbp_a)
		fbp_b = @first_body_photos.sample
		@second_first_body_photo = @first_body_photo.find_by(id:fbp_b)
		fbp_c = @first_body_photos.sample
		@third_first_body_photo = @first_body_photo.find_by(id:fbp_c)
		fbp_d = @first_body_photos.sample
		@fourth_first_body_photo = @first_body_photo.find_by(id:fbp_d)
		fbp_e = @first_body_photos.sample
		@fifth_first_body_photo = @first_body_photo.find_by(id:fbp_e)

		@second_body_photo = @second_body.photos
		@second_body_photos = []
		@second_body_photo.each do |s_bo|
			@second_body_photos << s_bo.id
		end
		sbp_a = @second_body_photos.sample
		@first_second_body_photo = @second_body_photo.find_by(id:sbp_a)
		sbp_b = @second_body_photos.sample
		@second_second_body_photo = @second_body_photo.find_by(id:sbp_b)
		sbp_c = @second_body_photos.sample
		@third_second_body_photo = @second_body_photo.find_by(id:sbp_c)
		sbp_d = @second_body_photos.sample
		@fourth_second_body_photo = @second_body_photo.find_by(id:sbp_d)
		sbp_e = @second_body_photos.sample
		@fifth_second_body_photo = @second_body_photo.find_by(id:sbp_e)
	end

	def show
		@body = Body.find(params[:id])
		@photos = @body.photos.all
	end

	def new
		@body = Body.new
		@bo = Body.where.not(id: '1')
		@bodies = @bo.order("name")
		@manufacturers = Manufacturer.all
	end

	def create
		@body = Body.new(body_params)
		if @body.save
			redirect_to bodies_path
		else
			render :new
		end
	end

	def edit
		@body = Body.find(params[:id])
	end

	def update
		@body = Body.find(params[:id])
		if @body.update(body_params)
			redirect_to body_path(params[:id])
		else
			render :edit
		end
	end

	def destroy
		body = Body.find(params[:id])
		body.destroy
		redirect_to bodies_path
	end

	private
	def body_params
		params.require(:body).permit(:name, :manufacturer_id, :sensor_size, :mount, :film, :reflex, :interchangeable)
	end
end
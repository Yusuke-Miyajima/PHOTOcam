class LensSystemsController < ApplicationController
	def index
		@all_lenses = LensSystem.where.not(id: '1')
		@own_photo_lens = Body.joins(:photos).distinct
		@lenses = []
		@own_photo_lens.each do |le|
			@lenses << le.id
		end
		a = @lenses.sample
		@first_lens = @own_photo_lens.find_by(id:a)
		b = @lenses.sample
		@second_lens = @own_photo_lens.find_by(id:b)

		@first_lens_photo = @first_lens.photos
		@first_lens_photos = []
		@first_lens_photo.each do |f_le|
			@first_lens_photos << f_le.id
		end
		flp_a = @first_lens_photos.sample
		@first_first_lens_photo = @first_lens_photo.find_by(id:flp_a)
		flp_b = @first_lens_photos.sample
		@second_first_lens_photo = @first_lens_photo.find_by(id:flp_b)
		flp_c = @first_lens_photos.sample
		@third_first_lens_photo = @first_lens_photo.find_by(id:flp_c)
		flp_d = @first_lens_photos.sample
		@fourth_first_lens_photo = @first_lens_photo.find_by(id:flp_d)
		flp_e = @first_lens_photos.sample
		@fifth_first_lens_photo = @first_lens_photo.find_by(id:flp_e)

		@second_lens_photo = @second_lens.photos
		@second_lens_photos = []
		@second_lens_photo.each do |s_le|
			@second_lens_photos << s_le.id
		end
		slp_a = @second_lens_photos.sample
		@first_second_lens_photo = @second_lens_photo.find_by(id:slp_a)
		slp_b = @second_lens_photos.sample
		@second_second_lens_photo = @second_lens_photo.find_by(id:slp_b)
		slp_c = @second_lens_photos.sample
		@third_second_lens_photo = @second_lens_photo.find_by(id:slp_c)
		slp_d = @second_lens_photos.sample
		@fourth_second_lens_photo = @second_lens_photo.find_by(id:slp_d)
		slp_e = @second_lens_photos.sample
		@fifth_second_lens_photo = @second_lens_photo.find_by(id:slp_e)
	end

	def show
		@lens = LensSystem.find(params[:id])
		@photos = @lens.photos.all
	end

	def new
		@lens = LensSystem.new
		@le = LensSystem.where.not(id: '1')
		@lenses = @le.order("name")
		@manufacturers = Manufacturer.all
	end

	def create
		@lens = LensSystem.new(lens_params)
		if @lens.save
			redirect_to lenses_path
		else
			render :new
		end
	end

	def edit
		@lens = LensSystem.find(psrams[:id])
	end

	def update
		@lens = LensSystem.find(params[:id])
		if @lens.update(lens_params)
			redirect_to lens_path(params[:id])
		else
			render :edit
		end
	end

	def destroy
		lens = LensSystem.find(params[:id])
		lens.destroy
		redirect_to lenses_path
	end

	private
	def lens_params
		params.require(:lens_system).permit(:name, :manufacturer_id, :full_frame_support, :mount, :minimum_aperture, :maximum_aperture, :minimum_focal_length, :maximum_focal_length, :type, :focus_system)
	end
end

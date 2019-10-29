class LensSystemsController < ApplicationController
	def index
		@lenses = LensSystem.where.not(id: '1')
		@r_lenses = @lenses.order("RANDOM()").limit(2)
		@first_photos = @r_lenses.first.photos.order("RANDOM()").limit(5)
		@second_photos = @r_lenses.second.photos.order("RANDOM()").limit(5)
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

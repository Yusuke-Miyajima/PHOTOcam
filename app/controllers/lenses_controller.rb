class LensesController < ApplicationController
	def index
		@lenses = Lens.all
	end

	def show
		@lens = Lens.find(params[:id])
		@photos = @lens.photos.all
	end

	def new
		@lens = Lens.new
		@lenses = Lens.all
	end

	def create
		@lens = Lens.new(lens_params)
		if @lens.save!
			redirect_to lenses_path
		else
			render :new
		end
	end

	def edit
		@lens = Lens.find(psrams[:id])
	end

	def update
		@lens = Lens.find(params[:id])
		if @lens.update(lens_params)
			redirect_to lens_path(params[:id])
		else
			render :edit
		end
	end

	def destroy
		lens = Lens.find(params[:id])
		lens.destroy
		redirect_to lenses_path
	end

	private
	def lens_params
		params.require(:lens).permit(:name, :manufacturer, :full_frame_support, :mount, :minimum_aperture, :maximum_aperture, :minimum_focal_length, :maximum_focal_length, :type, :focus_system)
	end
end

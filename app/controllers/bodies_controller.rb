class BodiesController < ApplicationController
	def index
		@bodies = Body.all
	end

	def show
		@body = Body.find(params[:id])
		@photos = @body.photos.all
	end

	def new
		@body = Body.new
		@bodies = Body.all
	end

	def create
		@body = Body.new(body_params)
		if body.save!
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
		params.require(:body).permit(:name, :manufacturer, :sensor_size, :mount, :film, :reflex, :interchangeable)
	end
end
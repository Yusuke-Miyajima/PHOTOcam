class BodiesController < ApplicationController

	def index
		@bodies = Body.all
	end

	def show
		@body = Body.find(params[:id])
	end

	def new
		@
	end

	def create
		@body = Body.new(body_params)
		if body.save
			redirect_to new_body_path
		else
			render :new
		end
	end

	def edit
		@body = Body.find(params[:id])
	end

	def update
		@body = Body.find(params[:id])
	end

	def destroy
	end

	private
	def body_params
		params.require(:body).permit(:name, :manufacturer, :sensor_size, :mount, :film, :reflex, :interchangeable)
	end

end

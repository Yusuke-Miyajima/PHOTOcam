class ManufacturersController < ApplicationController
	def new
		@manufacturer = Manufacturer.new
		@manufacturers = Manufacturer.order("manufacturer")
	end

	def create
		manufacturer = Manufacturer.new(manufacturer_params)
		if manufacturer.save
			redirect_to new_manufacturer_path
		else
			redirect_to new_manufacturer_path
		end
	end

	def edit
		@manufacturer = Manufacturer.find(params[:id])
	end

	def update
		manufacturer = Manufacturer.find(params[:id])
		if manufacturer.save
			redirect_to new_manufacturer_path
		else
			redirect_to new_manufacturer_path
		end
	end

	private
	def manufacturer_params
		params.require(:manufacturer).permit(:manufacturer)
	end
end

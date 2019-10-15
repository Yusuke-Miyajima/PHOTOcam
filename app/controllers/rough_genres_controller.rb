class RoughGenresController < ApplicationController
	def new
		@rough_genre = RoughGenre.new
		@rough_genres = RoughGenre.all
	end

	def create
		@rough_genre = RoughGenre.new(rough_genre_params)
		if @rough_genre.save!
			redirect_to new_rough_genre_path
		else
			render :new
		end
	end

	def edit
		@rough_genre = RoughGenre.find(params[:id])
	end

	def update
		@rough_genre = RoughGenre.find(params[:id])
		if @rough_genre.update(rough_genre_params)
			redirect_to new_rough_genre_path
		else
			render :edit
		end
	end

	def destroy
		rough_genre = RoughGenre.find(params[:id])
		rough_genre.destroy
		redirect_to new_rough_genre_path
	end

	private
	def rough_genre_params
		params.require(:rough_genre).permit(:genre)
	end
end

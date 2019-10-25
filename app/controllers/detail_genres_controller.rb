class DetailGenresController < ApplicationController
	def new
		@detail_genre = DetailGenre.new
		@detail_genres = DetailGenre.order("genre")
	end

	def create
		@detail_genre = DetailGenre.new(detail_genre_params)
		if @detail_genre.save!
			redirect_to new_detail_genre_path
		else
			render :new
		end
	end

	def edit
		@detail_genre = DetailGenre.find(params[:id])
	end

	def update
		@detail_genre = DetailGenre.find(params[:id])
		if @detail_genre.update(detail_genre_params)
			redirect_to new_detail_genre_path
		else
			render :edit
		end
	end

	def destroy
		detail_genre = DetailGenre.find(params[:id])
		detail_genre.destroy
		redirect_to new_detail_genre_path
	end

	private
	def detail_genre_params
		params.require(:detail_genre).permit(:genre, :rough_genre_id)
	end
end

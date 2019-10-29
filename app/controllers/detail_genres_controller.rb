class DetailGenresController < ApplicationController
	def new
		@rough_genre = RoughGenre.find(params[:rough_genre_id])
		@detail_genre = DetailGenre.new
		@detail_genres = DetailGenre.order("genre")
	end

	def create
		@detail_genre = DetailGenre.new(detail_genre_params)
		@rough_genre = RoughGenre.find(params[:rough_genre_id])
		if @detail_genre.save!
			redirect_to new_photo_path
		else
			render :new
		end
	end

	def edit
		@detail_genre = DetailGenre.find(params[:id])
		@rough_genre = RoughGenre.find(params[:rough_genre_id])
	end

	def update
		@detail_genre = DetailGenre.find(params[:id])
		@rough_genre = RoughGenre.find(params[:rough_genre_id])
		if @detail_genre.update(detail_genre_params)
			redirect_to new_rough_genre_detail_genre_path(@rough_genre.id)
		else
			render :edit
		end
	end

	def destroy
		@detail_genre = DetailGenre.find(params[:id])
		@rough_genre = RoughGenre.find(params[:rough_genre_id])
		@detail_genre.destroy
		redirect_to new_rough_genre_detail_genre_path(@rough_genre.id)
	end

	private
	def detail_genre_params
		params.require(:detail_genre).permit(:genre).merge(rough_genre_id: params[:rough_genre_id])
	end
end

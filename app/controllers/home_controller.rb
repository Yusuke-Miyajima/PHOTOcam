class HomeController < ApplicationController
	def top
		@detail_genres = DetailGenre.order("RANDOM()").limit(2)
		@first_genre_photos = @detail_genres.first.photos.order("RANDOM()").limit(3)
		@second_genre_photos = @detail_genres.second.photos.order("RANDOM()").limit(3)
		@bo = Body.where.not(id: '1')
		@bodies = @bo.order("RANDOM()").limit(4)
		@first_body_photos = @bodies.first.photos.order("RANDOM()").limit(3)
		@second_body_photos = @bodies.second.photos.order("RANDOM()").limit(3)
		@third_body_photos = @bodies.third.photos.order("RANDOM()").limit(3)
		@fourth_body_photos = @bodies.fourth.photos.order("RANDOM()").limit(3)
		@le = LensSystem.where.not(id: '1')
		@lenses = @le.order("RANDOM()").limit(4)
		@first_lens_photos = @lenses.first.photos.order("RANDOM()").limit(3)
		@second_lens_photos = @lenses.second.photos.order("RANDOM()").limit(3)
		@third_lens_photos = @lenses.third.photos.order("RANDOM()").limit(3)
		@fourth_lens_photos = @lenses.fourth.photos.order("RANDOM()").limit(3)
	end

	def about
	end
end

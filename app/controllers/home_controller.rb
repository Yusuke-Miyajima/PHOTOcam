class HomeController < ApplicationController
	def top
		@detail_genres = DetailGenre.order("RANDOM()").limit(2)
		@bodies = Body.order("RANDOM()").limit(3)
		@lenses = Lens.order("RANDOM()").limit(3)
	end

	def about
	end
end

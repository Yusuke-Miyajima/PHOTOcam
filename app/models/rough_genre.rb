class RoughGenre < ApplicationRecord
	has_many :detail_genres, dependent: :destroy
end

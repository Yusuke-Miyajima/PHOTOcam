class RoughGenre < ApplicationRecord
	has_many :detail_genre, dependent: :destroy
end

class DetailGenre < ApplicationRecord
	belongs_to :rough_genre
	has_many :photos, dependent: :destroy
end

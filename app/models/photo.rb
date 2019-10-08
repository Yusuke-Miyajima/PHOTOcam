class Photo < ApplicationRecord
	belongs_to :user
	belongs_to :body
	belongs_to :lens
	belongs_to :detail_genre
	has_many :favorite, dependent: :destroy
	has_many :comment, dependent: :destroy
end

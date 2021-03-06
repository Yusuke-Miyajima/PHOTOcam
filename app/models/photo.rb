class Photo < ApplicationRecord
	has_one_attached :image
	belongs_to :user
	belongs_to :body
	belongs_to :lens_system
	belongs_to :detail_genre
	has_many :favorites, dependent: :destroy
	has_many :comments, dependent: :destroy
	validates :title, presence: true

	def favorited_by?(user)
		favorites.where(user_id: user.id).exists?
	end

end
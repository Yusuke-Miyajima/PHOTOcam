class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :photos, dependent: :destroy
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  def self.search(search)
  	if search
  		where(["account_id LIKE?","%#{search}%"])
  	end
  end
end

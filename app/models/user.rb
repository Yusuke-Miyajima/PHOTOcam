class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :photos, dependent: :destroy
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  validates :account_id, uniqueness: true

  def self.search(search)
  	if search
  		where(["name LIKE? OR account_id LIKE?","%#{search}%","%#{search}%"])
    else
      User.order("RANDOM()").limit(5)
  	end
  end
end

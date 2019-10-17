class Manufacturer < ApplicationRecord
	has_many :bodies, dependent: :destroy
	has_many :lenses, dependent: :destroy
end

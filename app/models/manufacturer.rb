class Manufacturer < ApplicationRecord
	has_many :bodies, dependent: :destroy
	has_many :lens_systems, dependent: :destroy
end

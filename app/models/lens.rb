class Lens < ApplicationRecord
	has_many :photos, dependent: :destroy
end

class Lens < ApplicationRecord
	has_many :photos, dependent: :destroy
	self.inheritance_column = :_type_disabled
	enum full_frame_support: { able: 1, aps_c: 2 }

	def self.search(search)
		if search
			where(["name LIKE? OR manufacturer LIKE?", "%#{search}%","%#{search}%"])
		end
	end
end

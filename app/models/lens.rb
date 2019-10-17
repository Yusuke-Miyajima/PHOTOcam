class Lens < ApplicationRecord
	has_many :photos, dependent: :destroy
	self.inheritance_column = :_type_disabled
end

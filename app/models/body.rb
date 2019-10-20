class Body < ApplicationRecord
	has_many :photos, dependent: :destroy
	enum film: { film: 1, degital:2 }
	enum reflex: { reflex: 1, mirrorless: 2 }
	enum interchangeable: { interchangeable: 1, built_in: 2 }
end

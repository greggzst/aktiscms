class Section < ApplicationRecord
	has_many :section_elements, dependent: :destroy
	validates :name, presence: true, uniqueness: true
end

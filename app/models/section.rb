class Section < ApplicationRecord
	has_many :section_elements
	validates :name, presence: true, uniqueness: true
end

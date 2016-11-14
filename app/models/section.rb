class Section < ApplicationRecord
	has_many :section_elements, dependent: :destroy
	validates :name, presence: true, uniqueness: true
	before_save :set_refname

	private
		#setting section refname
		def set_refname
			self.refname = self.name.downcase.gsub(/\?|!|,/,"").split(" ").join(" ")
		end
end

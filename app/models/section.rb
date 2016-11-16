class Section < ApplicationRecord
	has_many :section_elements, dependent: :destroy
	validates :name, presence: true, uniqueness: true
	before_save :set_refname

	private
		#setting section refname by deleting all unneccessary marks and replacing spaces with _ symbols
		def set_refname
			self.refname = self.name.downcase.gsub(/\?|!|,|'/,"").split(" ").join("_")
		end
end

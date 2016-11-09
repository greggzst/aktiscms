class SectionElement < ApplicationRecord
  belongs_to :section
  validates :title, :content, :section, presence: true
end

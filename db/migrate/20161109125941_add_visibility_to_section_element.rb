class AddVisibilityToSectionElement < ActiveRecord::Migration[5.0]
  def change
    add_column :section_elements, :visibility, :boolean
  end
end

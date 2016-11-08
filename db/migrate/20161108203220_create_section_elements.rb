class CreateSectionElements < ActiveRecord::Migration[5.0]
  def change
    create_table :section_elements do |t|
      t.string :title
      t.text :content
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end

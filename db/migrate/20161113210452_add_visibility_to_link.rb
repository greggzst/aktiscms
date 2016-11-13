class AddVisibilityToLink < ActiveRecord::Migration[5.0]
  def change
    add_column :links, :visibility, :boolean
  end
end

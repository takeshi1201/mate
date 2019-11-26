class AddCategoryImageIdToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :category_image_id, :string
  end
end

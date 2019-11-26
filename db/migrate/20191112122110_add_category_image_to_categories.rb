class AddCategoryImageToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :category_image, :string
  end
end

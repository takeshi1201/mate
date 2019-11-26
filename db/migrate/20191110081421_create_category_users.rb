class CreateCategoryUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :category_users do |t|
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end

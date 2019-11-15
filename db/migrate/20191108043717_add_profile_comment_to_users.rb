class AddProfileCommentToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :profile_comment, :text
  end
end

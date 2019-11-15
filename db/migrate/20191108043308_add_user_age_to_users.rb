class AddUserAgeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_age, :integer
  end
end

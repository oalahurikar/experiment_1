class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_index :users, :username, unique: true # first, index usernames for quick (rapid) lookup. Second, ensure usernames are ALWAYS unique.
  end
end

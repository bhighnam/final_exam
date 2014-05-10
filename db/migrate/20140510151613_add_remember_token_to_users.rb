class AddRememberTokenToUsers < ActiveRecord::Migration
  def change
     # add in remember_token column to the users table in the database
     add_column :users, :remember_token, :string
     add_index  :users, :remember_token
  end
end

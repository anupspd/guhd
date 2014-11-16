class AddRememberTokenToLogins < ActiveRecord::Migration
  def change
    add_column :logins, :remember_token, :string
  end
end

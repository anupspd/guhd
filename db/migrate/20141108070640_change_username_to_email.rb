class ChangeUsernameToEmail < ActiveRecord::Migration
  def self.up
    rename_column :logins, :Username, :email
  end
end

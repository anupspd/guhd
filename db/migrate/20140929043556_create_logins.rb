class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :Username
      t.string :Password

      t.timestamps
    end
  end
end

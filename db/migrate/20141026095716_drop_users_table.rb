class DropUsersTable < ActiveRecord::Migration
  def change
  end

  def up
    drop_table :users
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end

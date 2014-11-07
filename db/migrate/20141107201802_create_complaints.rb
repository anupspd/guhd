class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
      t.string :username
      t.string :department
      t.string :type
      t.string :subject
      t.string :phone

      t.timestamps
    end
  end
end

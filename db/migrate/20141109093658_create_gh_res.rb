class CreateGhRes < ActiveRecord::Migration
  def change
    create_table :gh_res do |t|
      t.string :reservation_id
      t.string :guestType
      t.string :guestName
      t.string :guestSex
      t.string :guestAge
      t.string :guestEMail
      t.string :guestPhone

      t.timestamps
    end
  end
end

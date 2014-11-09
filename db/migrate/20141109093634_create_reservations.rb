class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :type
      t.string :purpose
      t.string :noOfPpl
      t.string :from_date
      t.string :to_date

      t.timestamps
    end
  end
end

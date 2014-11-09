class CreateHallRes < ActiveRecord::Migration
  def change
    create_table :hall_res do |t|
      t.string :reservation_id
      t.string :hall

      t.timestamps
    end
  end
end

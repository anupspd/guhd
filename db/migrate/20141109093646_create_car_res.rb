class CreateCarRes < ActiveRecord::Migration
  def change
    create_table :car_res do |t|
      t.string :reservation_id
      t.string :source
      t.string :destination

      t.timestamps
    end
  end
end

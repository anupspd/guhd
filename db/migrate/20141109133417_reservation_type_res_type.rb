class ReservationTypeResType < ActiveRecord::Migration
  def self.up
    rename_column :reservations, :type, :res_type
  end
end

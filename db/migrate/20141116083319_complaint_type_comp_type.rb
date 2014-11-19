class ComplaintTypeCompType < ActiveRecord::Migration
  def self.up
    rename_column :complaints, :type, :compl_type
  end
end

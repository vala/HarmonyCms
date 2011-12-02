class CreateRailsAdminPageRowsTable < ActiveRecord::Migration
   def self.up
     create_table :rails_admin_page_rows do |t|
       t.string :type
       t.integer :order_index
       t.string :width
       t.string :height
       t.timestamps
    end
    
  end

  def self.down
    drop_table :rails_admin_page_rows
  end
end
class CreateRailsAdminPageBlocksTable < ActiveRecord::Migration
   def self.up
     create_table :rails_admin_page_blocks do |t|
       t.string :type
       t.integer :order_index
       t.string :width
       t.string :height
       
       t.integer :page_row_id
       
       t.timestamps
    end
    
  end

  def self.down
    drop_table :rails_admin_page_blocks
  end
end
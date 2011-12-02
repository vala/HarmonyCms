class CreateRailsAdminModuleMapsTable < ActiveRecord::Migration
   def self.up
     create_table :rails_admin_module_maps do |t|
       t.string :title
       t.text :content
       t.string :type
             
       t.integer :page_id
       t.integer :template_id
       t.integer :page_block_id
       
       t.timestamps
    end
    
  end

  def self.down
    drop_table :rails_admin_module_maps
  end
end
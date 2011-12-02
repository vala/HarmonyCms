class CreateRailsAdminPagesTable < ActiveRecord::Migration
   def self.up
     create_table :rails_admin_pages do |t|
       t.string :source_type
       
       t.integer :parent_id
       t.integer :template_id
       t.integer :page_source_id
       
       t.timestamps
    end
    
  end

  def self.down
    drop_table :rails_admin_pages
  end
end
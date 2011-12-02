class CreateRailsAdminPageSourcesTable < ActiveRecord::Migration
   def self.up
     create_table :rails_admin_page_sources do |t|
       t.string :title, :null => false
       t.text :content
       
       t.timestamps
    end
    
  end

  def self.down
    drop_table :rails_admin_page_sources
  end
end
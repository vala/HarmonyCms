class CreateRailsAdminConfigurationTable  < ActiveRecord::Migration
   def self.up
     create_table :rails_admin_configuration do |t|
       t.string :label
       t.string :value
       
       t.timestamps
    end
    
  end

  def self.down
    drop_table :rails_admin_configuration
  end
end
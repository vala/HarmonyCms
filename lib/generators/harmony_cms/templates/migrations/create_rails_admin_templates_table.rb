class CreateRailsAdminTemplatesTable < ActiveRecord::Migration
   def self.up
     create_table :rails_admin_templates do |t|
       t.string :name
       t.text :description
       
       t.integer :template_model_id
       t.timestamps
    end
    
  end

  def self.down
    drop_table :rails_admin_templates
  end
end
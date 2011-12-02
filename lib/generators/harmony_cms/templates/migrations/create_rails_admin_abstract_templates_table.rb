class CreateRailsAdminAbstractTemplatesTable < ActiveRecord::Migration
   def self.up
     create_table :rails_admin_abstract_templates do |t|
       t.string :name
       t.text :description
       
       t.timestamps
    end
    
  end

  def self.down
    drop_table :rails_admin_abstract_templates
  end
end
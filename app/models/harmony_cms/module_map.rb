module HarmonyCms
  class ModuleMap < ActiveRecord::Base
    set_table_name :rails_admin_module_maps
    
    belongs_to :page
    belongs_to :template
    belongs_to :page_block
  end
end
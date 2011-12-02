module HarmonyCms
  class PageBlock < ActiveRecord::Base
    set_table_name :rails_admin_page_blocks
    
    has_many :module_maps
    belongs_to :page_row
  end
end
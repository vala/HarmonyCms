module HarmonyCms
  class PageRow < ActiveRecord::Base
    set_table_name :rails_admin_page_rows
    
    has_many :page_blocks
    belongs_to :template_model, :class_name => "AbstractTemplate"
  end
end
module HarmonyCms
  class AbstractTemplate < ActiveRecord::Base
    set_table_name :rails_admin_abstract_templates
    
    has_many :templates
    has_many :page_rows
  end
end
module HarmonyCms
  class Template < ActiveRecord::Base
    set_table_name :rails_admin_templates
    
    has_many :pages
    has_many :module_maps
    belongs_to :tempalte_model, :class_name => "AbstractTemplate"
  end
end
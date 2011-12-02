module HarmonyCms
  class Page < ActiveRecord::Base
    set_table_name :rails_admin_pages
    
    belongs_to :parent, :class_name => 'Page', :foreign_key => 'parent_id'
  	has_many :children, :class_name => 'Page'
	  
	  has_many :module_maps
  	belongs_to :template
  	belongs_to :page_source

  	validates :title, :presence => true 

  	before_save :set_template

  	def breadcrumbs
  	  bc = [name]
      bc.push parent.breadcrumbs if parent
      bc
    end

    def get_template
      if template
        template
      elsif parent
        parent.template
      else
        default = Template.where(:default => true)
        if default.length > 0
          default
        else
          Template.first
        end
      end
    end

    protected

      def set_template
        template = get_template
      end
  end
end
class Page < ActiveRecord::Base
	belongs_to :parent, :class_name => 'Page', :foreign_key => 'parent_id'
	has_many :children, :class_name => 'Page'
	belongs_to :template
	has_and_belongs_to_many :modules, :class_name => "PageModule", :foreign_key => 'page_module_id'
	
	validates :title, :presence => true 
	
	before_save :set_template
	
	def breadcrumbs
	  bc = [name]
    if parent
      bc.push parent.breadcrumbs
    end
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

class PageModule < ActiveRecord::Base
  has_and_belongs_to_many :pages
  
  fields do
    content :text
    type_id :integer
  end
end

###
table page_modules_pages do
  fields do
    page_module_id :integer
    page_id :integer
    type
  end
end
###

# Permet de dire qu'on a 1 colonne à gauche, 1 à droite, un menu, 1 header, 1 footer
class AbstractTemplate < ActiveRecord::Base
  has_many :templates
end

class Template < ActiveRecord::Base
  belongs_to :abstract_template
  has_many :pages
end

class ApplicationController
	layout :initialize_template!
	
	protected
	
	  def initialize_template!
	    @template_params = Template.get params
    end
end



################################################################
#
# =>  Constants
#
################################################################

MODULE_TYPE_PAGE = 1
MODULE_TYPE_HTML = 2
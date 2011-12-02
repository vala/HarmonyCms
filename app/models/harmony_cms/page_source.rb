module HarmonyCms
  class PageSource < ActiveRecord::Base
    set_table_name :rails_admin_page_sources
    has_many :pages
  end
end
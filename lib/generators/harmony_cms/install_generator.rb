require 'rails/generators'

module HarmonyCms
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path '../templates', __FILE__
  
    def install_rails_admin
      generate "rails_admin:install"
    end
    
    def copy_migration_files
      Dir[File.expand_path('migrations/*', __FILE__)].each do |migration_path|
        copy migration_path, 'db/migrate/'
      end
    end
  end
end
$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "harmony_cms/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "harmony_cms"
  s.version     = HarmonyCms::VERSION
  s.authors     = ["Valentin Ballestrino"]
  s.email       = ["vala@harmonyns.com"]
  s.homepage    = "http://www.harmonyns.com"
  s.summary     = "Simple CMS based on RailsAdmin"
  s.description = "No more than what's in the summary could be told for now"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.1"
  s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end

$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "open_project/backlogs/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "openproject-backlogs"
  s.version     = OpenProject::Backlogs::VERSION
  s.authors = "Finn GmbH"
  s.email = "info@finn.de"
  s.homepage = "https://www.openproject.org/projects/plugin-backlogs"
  s.summary     = "OpenProject Backlogs"
  s.description = "This plugin adds features enabling agile teams to work with OpenProject in Scrum projects."
  s.files = Dir["{app,config,db,lib,doc}/**/*", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 3.2.9"
  s.add_dependency "acts_as_silent_list", "~> 1.3.0"
  s.add_dependency "openproject-plugins", "~> 3.0.8"
  s.add_dependency "openproject-pdf_export"

  s.add_development_dependency "factory_girl_rails", "~> 4.0"
end

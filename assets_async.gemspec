$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "assets_async/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "assets_async"
  s.version     = AssetsAsync::VERSION
  s.authors     = ["Dimas Julisa Taniawan"]
  s.email       = ["dimazniawan@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of AssetsAsync."
  s.description = "TODO: Description of AssetsAsync."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5"
  s.add_dependency "uglifier", "~> 2.7.2"

  s.add_development_dependency "sqlite3"
end

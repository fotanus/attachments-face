$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "attachments-face/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "attachments-face"
  s.version     = AttachmentsFace::VERSION
  s.authors     = ["Felipe Tanus"]
  s.email       = ["fotanus@gmail.com"]
  s.homepage    = "http://fotanus.com"
  s.summary     = "Collection of helpers to create cleaner views with attachments."
  s.description = "Collection of helpers to create cleaner views with attachments."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"

  s.add_development_dependency "sqlite3"
end

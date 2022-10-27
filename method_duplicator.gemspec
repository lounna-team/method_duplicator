require_relative "lib/method_duplicator/version"

Gem::Specification.new do |spec|
  spec.name        = "method_duplicator"
  spec.version     = MethodDuplicator::VERSION
  spec.authors     = ["Théo Dugautier"]
  spec.email       = ["theo.dugautier@protonmail.com"]
  spec.homepage    = "https://www.hoggo.com"
  spec.summary     = "Summary of MethodDuplicator."
  spec.description = "Description of MethodDuplicator."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://www.hoggo.com"
  spec.metadata["changelog_uri"] = "https://www.hoggo.com"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", ">= 6.1"
  spec.add_dependency "color-console"
end

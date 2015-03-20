# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'social_snippet/supports/git/version'

Gem::Specification.new do |spec|
  spec.name          = "social_snippet-supports-git"
  spec.version       = SocialSnippet::Supports::Git::VERSION
  spec.authors       = ["Hiroyuki Sano"]
  spec.email         = ["sh19910711@gmail.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.summary       = %q{Git Repository Supports}
  spec.homepage      = "https://github.com/social-snippet/social-snippet-supports-git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 1.9.3"

  spec.add_runtime_dependency "rugged", ["~> 0.21.4", ">= 0.21.4"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "yard"
  spec.add_development_dependency "rspec"
end

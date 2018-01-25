lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'firebase/version'

Gem::Specification.new do |spec|
  spec.name = 'firebase'
  spec.version = Firebase::VERSION

  spec.require_paths = ['lib']
  spec.authors = ['Oscar Del Ben']
  spec.date = '2015-11-26'
  spec.description = 'Firebase wrapper for Ruby'
  spec.email = 'info@oscardelben.com'
  spec.extra_rdoc_files = %w[CHANGELOG.md LICENSE.txt README.md]
  spec.files = `git ls-files lib/`.split($/)
  spec.homepage = 'http://github.com/oscardelben/firebase-ruby'
  spec.licenses = ['MIT']
  spec.summary = 'Firebase wrapper for Ruby'

  spec.add_runtime_dependency 'httpclient', '>= 2.5.3'
  spec.add_runtime_dependency 'json'
  spec.add_runtime_dependency 'googleauth'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rdoc'
  spec.add_development_dependency 'rspec'
end

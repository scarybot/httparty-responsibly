# -*- encoding: utf-8 -*-
$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require "httparty/version"

Gem::Specification.new do |s|
  s.name        = "httparty-responsibly"
  s.version     = HTTParty::VERSION + '.r'
  s.platform    = Gem::Platform::RUBY
  s.licenses    = ['MIT']
  s.authors     = ["John Nunemaker", "Sandro Turriate", "James Denness"]
  s.email       = ["nunemaker@gmail.com", "james@denness.org"]
  s.homepage    = "https://github.com/scarybot/httparty-responsibly"
  s.summary     = "An up-to-date fork of jnunemaker's httparty, without the post-install nonsense."
  s.description = "An up-to-date fork of jnunemaker's httparty, without the post-install nonsense."

  s.required_ruby_version     = '>= 2.0.0'

  s.add_dependency 'multi_xml', ">= 0.5.2"
  s.add_dependency('mime-types', "~> 3.0")

  all_files = `git ls-files`.split("\n")
  test_files = `git ls-files -- {test,spec,features}/*`.split("\n")

  s.files         = all_files - test_files
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ["lib"]
end

$:.unshift(File.dirname(__FILE__) + '/lib/')
require 'jimson/version'

Gem::Specification.new do |s|
  s.name = 'jimson'
  s.version = Jimson::VERSION
  s.author = 'Chris Kite'
  s.homepage = 'http://www.github.com/chriskite/jimson'
  s.platform = Gem::Platform::RUBY
  s.summary = 'JSON-RPC 2.0 client and server'
  s.require_path = 'lib'
  s.has_rdoc = false
  s.extra_rdoc_files = ['README.md']
  s.add_dependency('blankslate', '~> 3.1', '>= 3.1.3')
  s.add_dependency('rest-client', '>= 1.0', '< 3.0')
  s.add_dependency('multi_json', '~> 1', '>= 1.11.2')
  s.add_dependency('rack', '>= 1.0', '< 3.0')
  s.add_development_dependency('rspec', '>= 3.4.4')
  s.add_development_dependency('rack-test')
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc', '~> 4.2', '>= 4.2.2')

  s.files = %w(
    LICENSE.txt
    CHANGELOG.rdoc
    README.md
    Rakefile
  ) + Dir['lib/**/*.rb']

  s.test_files = Dir['spec/*.rb']
end

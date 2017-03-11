require 'rubygems'
$:.unshift(File.dirname(__FILE__) + '/../lib/')
require 'jimson'
require 'bundler/setup'
require 'multi_json'

SPEC_URL = 'http://localhost:8999'

RSpec.configure do |config|
  config.raise_errors_for_deprecations!
end

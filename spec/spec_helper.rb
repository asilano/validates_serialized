require 'rubygems'
require 'bundler/setup'
require 'validates_serialized'

spec = Gem::Specification.find_by_name("validates_serialized")
gem_root = spec.gem_dir
Dir[("#{gem_root}/spec/support/**/*.rb")].each {|f| require f}
I18n.config.enforce_available_locales = true

RSpec.configure do |config|
  config.mock_with :rspec
end

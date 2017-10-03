# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_store_locator'
  s.version     = '3.3.0'
  s.summary     = 'A Store Locator for your Spree Store'
  s.description = 'Show your customer where do you sell easily'
  s.required_ruby_version = '>= 1.9.3'

   s.author    = 'Noel Diaz'
   s.email     = 'noel@2bedigital.com'
   

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 3.3.0.rc1'
  s.add_dependency 'geocoder', '1.2.6'

  s.add_development_dependency 'capybara', '~> 2.4'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.13'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end

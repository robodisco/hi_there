$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "hi_there/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "hi_there"
  s.version     = HiThere::VERSION
  s.authors     = ["Adam Akhtar"]
  s.email       = ["adam.akhtar@gmail.com"]
  s.homepage    = "http:github.com/robodisco/hi_there"
  s.summary     = "Drip email marketing engine for Rails"
  s.description = "Create simple drip email courses A.K.A. automated responses like Drip, Mailchimp or Aweber"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency 'rails', '~> 4.2.4'
  s.add_dependency 'acts_as_list', '~> 0.7.0'
  s.add_dependency 'chartkick', '~>1.4.0'
  s.add_dependency 'email_validator', '~> 1.6.0'
  s.add_dependency 'groupdate', '~>2.5.0'
  s.add_dependency 'jquery-rails', '~> 4.0.0'
  s.add_dependency 'jquery-ui-rails', '~> 5.0.0'
  s.add_dependency 'kaminari', '~> 0.16.0'
  s.add_dependency 'bootstrap-kaminari-views', '~> 0.0.5'
  s.add_dependency 'kramdown', '~> 1.8.0'
  s.add_dependency 'simple_form', '~> 3.1.0'
  s.add_dependency 'workflow', '~> 1.2.0'

  s.add_development_dependency 'byebug'
  s.add_development_dependency 'capybara', '~> 2.4.0'
  s.add_development_dependency 'devise'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'launchy'
  s.add_development_dependency 'letter_opener'
  s.add_development_dependency 'rspec-rails', '~> 3'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'timecop'

  s.add_development_dependency 'pg'
end

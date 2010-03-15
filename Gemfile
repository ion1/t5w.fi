# Edit this Gemfile to bundle your application's dependencies.
source 'http://gemcutter.org'


gem "rails", "3.0.0.beta"

## Bundle edge rails:
# gem "rails", :git => "git://github.com/rails/rails.git"

# ActiveRecord requires a database adapter. By default,
# Rails has selected sqlite3.
gem "sqlite3-ruby", :require => "sqlite3"

# Use RSpec for unit testing.
group :test do
  gem 'rspec', '>= 2.0.0.a'
  gem 'rspec-rails', '>= 2.0.0.a'
end

# Use Cucumber with Capybara for integration testing.
group :test do
  gem 'capybara'
  # The slimmed down version of test-unit in Ruby 1.9.1 isn't enough for
  # Cucumber.
  gem 'test-unit'
  gem 'cucumber'
  gem 'cucumber-rails', :git => 'git://github.com/aslakhellesoy/cucumber-rails.git'
end

# Use Factory Girl to generate test objects.
gem 'factory_girl', :group => :test

# Used by features/step_definitions/relative_time_steps.rb.
gem 'chronic_duration', :group => :test

## Bundle the gems you use:
# gem "bj"
# gem "hpricot", "0.6"
# gem "sqlite3-ruby", :require => "sqlite3"
# gem "aws-s3", :require => "aws/s3"

## Bundle gems used only in certain environments:
# gem "rspec", :group => :test
# group :test do
#   gem "webrat"
# end

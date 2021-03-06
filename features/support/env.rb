require 'cucumber/rails'

ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

Cucumber::Rails::Database.javascript_strategy = :truncation

# Configuration to run javascript tests with phantomjs
# require 'capybara/poltergeist'

# Capybara.register_driver :poltergeist do |app|
#   Capybara::Poltergeist::Driver.new(app, {debug: false})
# end

# Capybara.javascript_driver = :poltergeist


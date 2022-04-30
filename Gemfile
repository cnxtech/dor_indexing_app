source 'https://rubygems.org'

gem 'rails', '~> 5.2.3'

# Use Puma as the app server
gem 'puma', '~> 4.3'

gem 'erubis'

gem 'config'
gem 'honeybadger', '~> 3.0'
gem 'rack-timeout', '~> 0.5.1'
gem 'faraday'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

gem 'dor-services', '~> 7.0'
gem 'rsolr', '~> 2.0'
gem 'okcomputer' # for monitoring

group :production do
  gem 'newrelic_rpm'
end

group :development, :test do
  gem 'rspec-rails', '~> 3.0'
  gem 'coveralls', require: false
  gem 'simplecov', require: false
end

group :development do
  gem 'rubocop', '~> 0.67.2'
  gem 'rubocop-rspec'
end

group :deployment do
  gem 'capistrano', '~> 3.0'
  gem 'capistrano-rails'
  gem 'capistrano-passenger'
  gem 'capistrano-bundler'
  gem 'capistrano-shared_configs'
  gem 'dlss-capistrano', '~> 3.0'
end

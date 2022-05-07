source 'https://rubygems.org'

ruby '3.0.2'

gem 'sinatra'
gem 'sinatra-contrib'
gem 'puma'
gem 'thin'
gem 'falcon'
gem 'webrick'

group :test do
  gem 'capybara'
  gem 'rspec'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
end

group :development, :test do
  gem 'rubocop', '1.20'
end

gem 'sinatra'
gem 'shotgun'
gem 'capybara'
gem 'selenium-webdriver'

group :development, :test do
  gem "rspec"
end

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }
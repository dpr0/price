# frozen_string_literal: true
ruby '2.6.3'

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'activerecord-import'
gem 'bootsnap'
gem 'pg'
gem 'rails'
gem 'slim-rails'
gem 'uglifier'
gem 'webpacker'
gem 'listen'
gem 'dotenv-rails'
gem 'chartkick'
gem 'cocoon'
gem 'rest-client'
gem 'puma'

group :development do
  gem 'sqlite3'
  gem 'byebug'
  gem 'capistrano',            require: false
  gem 'capistrano-bundler',    require: false
  gem 'capistrano-nvm',        require: false
  gem 'capistrano-rails',      require: false
  gem 'capistrano-rbenv',      require: false
  gem 'capistrano-yarn',       require: false
  gem 'capistrano3-puma',       require: false
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'chromedriver-helper'
  gem 'selenium-webdriver'
end
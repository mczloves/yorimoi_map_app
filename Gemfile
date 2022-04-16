# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.3"

gem "rails", "~> 6.1.4", ">= 6.1.4.6"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "sass-rails", ">= 6"
gem "webpacker", "~> 5.0"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.7"

gem "bootsnap", ">= 1.4.4", require: false

group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "pry-byebug"
  gem "pry-doc"
  gem "pry-rails"
end

group :development do
  gem "web-console", ">= 4.1.0"
  gem "listen", "~> 3.3"
  gem "rack-mini-profiler", "~> 2.0"
  gem "spring"
  gem "capistrano", "~> 3.10", require: false
  gem "capistrano-rails", "~> 1.6", require: false
  gem 'capistrano-rbenv', '~> 2.2'
  gem 'capistrano-rbenv-vars', '~> 0.1'
  gem 'capistrano3-puma'
end

group :test do
  gem "capybara", ">= 3.26"
  gem "selenium-webdriver"
  gem "webdrivers"
end

gem "activeadmin"
gem "carrierwave", "~> 2.0"
gem "devise"
gem "devise-bootstrap-views", "~> 1.0"
gem "devise-i18n"
gem "kaminari"
gem "mini_magick"
gem "rails-i18n", "~> 6.0"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
gem "dotenv-rails"

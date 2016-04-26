source 'https://rubygems.org'

ruby '2.2.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'
# Rails i18n
gem 'rails-i18n'

group :development, :test do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
end

group :production do
  # Use PostgreSQL as the database for Active Record
  gem 'pg'
end

group :production do
  # Heroku
  gem 'rails_12factor'
end

# Simple form
gem 'simple_form', github: 'plataformatec/simple_form'
gem 'country_select'

# Bootstrap SaSS
gem 'bootstrap-sass', '~> 3.3.5'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery'
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# Devise
gem 'devise'
gem "paperclip", :git => "git://github.com/thoughtbot/paperclip.git"
gem 'paperclip-av-transcoder'

# Refile
gem "refile", require: ["refile/rails", "refile/image_processing"]
gem "refile-mini_magick"

# Pagination
gem 'will_paginate'

# Search
gem 'elasticsearch-model'
gem 'elasticsearch-rails'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '~> 0.4.0', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  #Rspec
  gem 'rspec-rails', '~> 2.14.0'
  #Factory Girl
  gem 'factory_girl_rails'
  #Capybara
  gem 'capybara', '~> 2.1.0'
  #Email spec
  gem 'email_spec', ">= 1.4.0"
end

# Use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'
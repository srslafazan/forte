source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '>= 5.0.0.beta1', '< 5.1'
# For security reasons...not entirely sure why...yet
gem 'bcrypt',       '3.1.7'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# image uploading
gem "paperclip", git: "git://github.com/thoughtbot/paperclip.git"

#style gems
gem 'sass-rails', '~> 5.0', '>= 5.0.4'
gem 'thor', '~> 0.19.1'
gem 'bourbon', '~> 4.2', '>= 4.2.6'
gem 'neat', '~> 1.7', '>= 1.7.2'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
	  # Access an IRB console on exception pages or by using <%= console %> in views
	  gem 'web-console', '~> 3.0'
	  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
	  gem 'spring'

    gem 'capistrano',         require: false
    gem 'capistrano-rvm',     require: false
    gem 'capistrano-rails',   require: false
    gem 'capistrano-bundler', require: false
    gem 'capistrano3-puma',   require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'material_icons'
gem 'hirb'

source 'https://rubygems.org'

gem 'rails', '4.1.1'
gem 'mysql2'

# CMS gem
gem 'activeadmin', github: 'gregbell/active_admin'

# Asset gems
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'

gem 'devise'
gem 'simple_form', '~> 3.1.0.rc1'

gem 'mini_magick'
gem 'carrierwave'

group :development do
    gem 'letter_opener'
    gem 'jazz_hands'

    # gem 'rack-mini-profiler'
    gem 'awesome_print' # awesome print in console

    gem 'better_errors'
    gem 'binding_of_caller'
    gem 'meta_request'  # used for the Chrome Developer Toolbar

    gem 'quiet_assets'

    # gem 'sass-rails-source-maps'
    # gem 'coffee-rails-source-maps'
end

group :development, :test do
    # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
    gem 'spring'
    gem 'spring-commands-rspec'

    gem 'rspec-rails', '~> 3.0.0'
    gem 'guard-rspec'
    gem 'fuubar'
    gem 'factory_girl_rails'
end

group :test do
    gem 'capybara'
    gem 'shoulda-matchers'
    gem 'faker'
    gem 'launchy'
    gem 'poltergeist'
end

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

ruby '2.1.1'

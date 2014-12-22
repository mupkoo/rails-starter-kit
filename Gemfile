source 'https://rubygems.org'

gem 'rails', '4.2.0'
gem 'mysql2'

# CMS gems
gem 'inherited_resources', github: 'josevalim/inherited_resources', branch: 'rails-4-2'
gem 'activeadmin', github: 'lazaronixon/activeadmin', branch: 'master'
gem 'redactor-rails'

# Asset gems
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'

gem 'devise'
gem 'simple_form', '~> 3.1.0'

gem 'mini_magick'
gem 'carrierwave'

group :development do
    gem 'letter_opener'

    gem 'jazz_hands', github: 'nixme/jazz_hands', branch: 'bring-your-own-debugger'
    gem 'pry-byebug'
    gem 'web-console', '~> 2.0'

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

ruby '2.1.5'

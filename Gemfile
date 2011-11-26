source 'http://rubygems.org'

gem 'rails', '3.1.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  #gem 'less-rails'
  #gem 'less-rails-bootstrap', '~> 1.3.0'
  gem 'uglifier'
end

platform :ruby do
  gem 'less-rails'
  #gem 'less-rails-bootstrap', '~> 1.3.0'
end

gem 'tilt'
gem 'jquery-rails'
gem 'devise'
gem 'twitter_bootstrap_form_for', :git =>  'git://github.com/softmachine/twitter_bootstrap_form_for.git'
gem 'mercury-rails', :git => 'https://github.com/jejacks0n/mercury.git'


group :development do
  gem 'sqlite3'
  gem 'rspec-rails', '2.6.1'
  #gem 'annotate', :git => 'git://github.com/ctran/annotate_models.git'
  gem 'factory_girl_rails'
  gem 'faker'
  #gem 'rails-footnotes'
end

group :production do
  gem 'pg'
end


# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'sqlite3'
  gem 'turn', :require => false
  gem 'factory_girl_rails'
  gem 'faker'
end

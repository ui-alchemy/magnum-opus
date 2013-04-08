#source 'http://mirror1.prod.rhcloud.com/mirror/ruby/'
source 'http://www.rubygems.org'

gem 'rails', '~> 3.2.6'

group :assets do
  gem 'sass-rails', '~> 3.2.3'
  gem 'compass-rails', '~> 1.0.3'
  gem 'therubyracer', '~> 0.10.0', :platforms => :ruby
  gem 'uglifier', '>= 1.0.3'
end

gem 'haml-rails'

gem 'gettext_i18n_rails'

if File.exists? File.expand_path('../ui_alchemy-rails')
  gem 'ui_alchemy-rails', :path => '../ui_alchemy-rails'
else
  gem 'ui_alchemy-rails'
end

# This version needs to be hardcoded for OpenShift compatability
gem 'thor', '= 0.14.6'

# This needs to be installed so we can run Rails console on OpenShift directly
gem 'minitest'

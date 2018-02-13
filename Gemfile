source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'activeadmin', github: 'activeadmin'
gem 'activemodel-serializers-xml', github: 'rails/activemodel-serializers-xml'
gem 'coffee-rails'
gem 'devise'
gem 'figaro'
gem 'formtastic', github: 'justinfrench/formtastic'
gem 'jquery-rails'
gem 'kaminari'
gem 'puma'
gem 'rails'
gem 'ransack', github: 'activerecord-hackery/ransack'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 2.7.2'

group :production do
  gem 'pg', '~> 0.20'
  gem 'rails_12factor'
end

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'capybara'
  gem 'codacy-coverage', require: false
  gem 'coveralls', require: false
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'ffaker'
  gem 'rails-controller-testing'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'sqlite3'
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

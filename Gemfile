source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'activeadmin', github: 'activeadmin'
gem 'activemodel-serializers-xml', github: 'rails/activemodel-serializers-xml'
gem 'devise'
gem 'figaro'
gem 'formtastic', github: 'justinfrench/formtastic'
gem 'kaminari', github: 'amatsuda/kaminari', branch: '0-17-stable'
gem 'puma'
gem 'rails'
gem 'ransack', github: 'activerecord-hackery/ransack'

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'capybara'
  gem 'coveralls'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
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

source 'https://www.rubygems.org'

ruby '2.1.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'

# Use mysql as the database for Active Record
gem 'mysql2'

gem 'rails-api'
gem "rack-cors", require: "rack/cors"
gem 'active_model_serializers'

gem "grape", '0.9.0'
gem "grape-active_model_serializers"
gem 'grape-swagger', github: 'tim-vandecasteele/grape-swagger'
gem 'grape-swagger-rails', github: 'BrandyMint/grape-swagger-rails'
gem 'grape-raketasks'

gem 'puma'

gem 'yaml_db', github: 'jetthoughts/yaml_db', ref: 'fb4b6bd7e12de3cffa93e0a298a1e5253d7e92ba'

group :development, :test do
  gem "pry-nav"
  gem "pry-rails"
  gem "pry-stack_explorer"
  gem "pry-theme"

  gem 'airborne'

  gem "database_cleaner"
  gem "factory_girl_rails"
  gem "faker"
  gem "rspec-rails"
  gem 'spring-commands-rspec'
  gem 'guard-rspec'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

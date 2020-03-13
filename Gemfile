source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'

gem 'bcrypt', '~> 3.1', '>= 3.1.12'
gem 'mysql2', '~> 0.4.4'
gem 'puma', '~> 3.7'
gem 'rack-cors'
gem 'rails', '~> 5.2.2'
gem 'simple_token_authentication', '~> 1.0'
gem "sprockets", (RUBY_VERSION < "2.5" ? "< 4.0.0" : ">= 4.0.0")


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'faker'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

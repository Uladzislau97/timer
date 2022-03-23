source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

gem 'pg', '~> 1.3', '>= 1.3.4'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.2'
gem 'tzinfo-data', platforms: %i[ mingw mswin x64_mingw jruby ]

group :development, :test do
  gem 'debug', platforms: %i[ mri mingw x64_mingw ]
  gem 'rspec-rails', '~> 5.1', '>= 5.1.1'
end

group :development do
  gem 'annotate', '~> 3.2'
end

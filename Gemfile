# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

gem 'delayed_job_active_record', '~> 4.1', '>= 4.1.7'
gem 'dry-validation', '~> 1.8'
gem 'pg', '~> 1.3', '>= 1.3.4'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.2'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails', '~> 5.1', '>= 5.1.1'
  gem 'rubocop-rails', '~> 2.14', '>= 2.14.2'
  gem 'rubocop-rspec', '~> 2.9'
end

group :development do
  gem 'annotate', '~> 3.2'
end

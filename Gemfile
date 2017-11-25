# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem 'puma', '~> 3.11'
gem 'grape', '~> 1.0', '>= 1.0.1'

gem 'sphynx', path: '../sphynx'

group :development, :test do
  gem 'rack-test', '~> 0.8.2'
  gem 'rspec', '~> 3.7'
end

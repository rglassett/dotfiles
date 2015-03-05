gem 'bootstrap-sass'

gem_group :development, :test do
  gem 'annotate'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'pry-rails'
  gem 'rspec'
  gem 'rspec-rails'
end

run "bundle install"

git :init
git :add => "-A"
git :commit => "-m 'Initial commit'"

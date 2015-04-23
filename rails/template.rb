gem_group :development, :test do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'pry-rails'
end

run "bundle install"

git :init
git :add => "-A"
git :commit => "-m 'Initial commit'"

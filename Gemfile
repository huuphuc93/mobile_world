source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 5.1.4"
gem "puma", "~> 3.7"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.2"
gem "jbuilder", "~> 2.5"
gem "devise"
gem "cancancan", "~> 2.0"
gem "config"
gem "rails-i18n", "~> 5.1"
gem "jquery-rails", "~> 4.3", ">= 4.3.1"
gem "bootstrap-sass", "~> 3.3.7"
gem "ratyrate"
gem "font-awesome-rails"
gem "omniauth"
gem "omniauth-facebook"
gem "devise-i18n"
gem "figaro"
gem "pg"
gem "pg_search"
gem "kaminari"
gem "i18n-js"
gem "rails_admin"
gem "rails_admin-i18n"
gem "carrierwave", "~> 1.0"
gem "mini_magick"
gem "ckeditor"
gem "closure_tree"
gem "jquery-infinite-pages"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "capybara", "~> 2.13"
  gem "selenium-webdriver"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem "mini_racer", platforms: :ruby

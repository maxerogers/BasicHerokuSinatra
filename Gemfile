#Gemfile

source 'https://rubygems.org'
ruby '2.1.1'

gem 'sinatra'
gem 'data_mapper'
gem 'slim'
group :development do
    gem "sqlite3"
    gem "dm-sqlite-adapter"
end

group :production do
    gem "pg"
    gem "dm-postgres-adapter"
end
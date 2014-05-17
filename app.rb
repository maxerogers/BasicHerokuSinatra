require 'sinatra'
require 'data_mapper'
require 'dm-postgres-adapter'


get '/' do
  'Hello World'
end

configure :development do
    DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/development.db")
end

configure :production do
    DataMapper.setup(:default, ENV['HEROKU_POSTGRESQL_RED_URL'])
end

class Fact
	include DataMapper::Resource
	property :id, Serial
	property :name, String, :length => 25
end	
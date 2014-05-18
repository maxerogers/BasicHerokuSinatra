require 'sinatra'
require 'data_mapper'
require 'dm-postgres-adapter'
require 'slim'


get '/' do
  slim :index
end

configure :development do
    DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/development.db")
end

configure :production do
    DataMapper.setup(:default, ENV['DATABASE_URL'] || 'postgres://localhost/mydb')
end

class Fact
	include DataMapper::Resource
	property :id, Serial
	property :data, String, :length => 25
end	

DataMapper.finalize

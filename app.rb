require 'sinatra'
require 'data_mapper'
require 'dm-postgres-adapter'


get '/' do
  "Hello World!"
end

DataMapper.setup(:default, ENV['DATABASE_URL'] || 'postgres://localhost/mydb')

class Fact
	include DataMapper::Resource
	property :id, Serial
	property :name, String, :length => 25
end	

DataMapper.auto_upgrade!
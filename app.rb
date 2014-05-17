require 'sinatra'
require 'data_mapper'
require 'dm-postgres-adapter'


get '/' do
  Fact.last.data
end

DataMapper.setup(:default, ENV['DATABASE_URL'] || 'postgres://localhost/mydb')

class Fact
	include DataMapper::Resource
	property :id, Serial
	property :name, String, :length => 25
end	

Fact.create(data: 'asdf adsf')

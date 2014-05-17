require 'sinatra'
require 'slim'
require 'dm-postgres-adapter'
require 'data_mapper'

get '/' do
	@fact = Fact.first(:offset => rand(Fact.count))
	@x = "1"
	slim :index
end

DataMapper.setup(:default, ENV['DATABASE_URL'] || 'postgres://localhost/mydb')

class Fact
  include DataMapper::Resource
  property :id,           Serial
  property :data,         String, :required => true, length: 255
end

DataMapper.finalize
Fact.auto_upgrade!

#seed
require './seeds'

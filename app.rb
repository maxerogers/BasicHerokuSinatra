require 'sinatra'
require 'slim'
require 'dm-sqlite-adapter'
require 'data_mapper'

get '/' do
	@fact = Fact.first(:offset => rand(Fact.count))
	@x = "1"
	slim :index
end

DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/blog.db")

class Fact
  include DataMapper::Resource
  property :id,           Serial
  property :data,         String, :required => true, length: 255
end

DataMapper.finalize
Fact.auto_upgrade!

#seed
require './seeds'

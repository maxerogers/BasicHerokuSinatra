require 'sinatra'
require 'data_mapper'
require 'dm-postgres-adapter'


get '/' do
  '#{Fact.last.data}'
end

configure :development do
    DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/development.db")
    DataMapper.finalize
    Fact.auto_migrate!
end

configure :production do
    DataMapper.setup(:default, ENV['DATABASE_URL'] || 'postgres://localhost/mydb')
end

class Fact
	include DataMapper::Resource
	property :id, Serial
	property :data, String, :length => 25
end	


require 'sinatra'
require 'data_mapper'
require 'dm-postgres-adapter'


get '/' do
  "Hello World!"
end

DataMapper.setup(:default, ENV['DATABASE_URL'] || 'postgres://localhost/mydb')
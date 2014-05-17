require 'sinatra'
require 'data_mapper'

get '/' do
  "Hello World!"
end

DataMapper.setup(:default, ENV['DATABASE_URL'] || 'postgres://localhost/mydb')
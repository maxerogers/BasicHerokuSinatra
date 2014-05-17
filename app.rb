require 'sinatra'

get '/' do
  "Hello World!"
end

require 'data_mapper'
DataMapper.setup(:default, ENV['DATABASE_URL'] || 'postgres://localhost/mydb')
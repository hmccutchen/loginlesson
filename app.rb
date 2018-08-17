require 'sinatra'
require 'sinatra/activerecord'
 enable :sessions

set :database, 'sqlite3:loginlesson.sqlite3'




get '/' do
@users = User.all

erb :home
  end


get '/account' do


erb :account
end


get '/signup' do

erb :signup
end



post '/signup' do

p params
end


post '/login' do

@email = params[:email]
@password = params[:password]

p @email
p @password

redirect :account
end


get '/login' do

erb :login
end










require './models'

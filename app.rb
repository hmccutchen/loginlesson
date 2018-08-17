require 'sinatra'
require 'sinatra/activerecord'
 enable :sessions

set :database, 'sqlite3:loginlesson.sqlite3'




get '/home' do
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

user = User.new(email: params[:email],
                name: params[:full_name],
                 password: params[:password])
user.save
redirect :home
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

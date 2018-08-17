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

email = params[:email]
given_password = params[:password]


user = User.find_by(email: email)
if user.password == given_password
  session[:user] = "#{email}"
redirect :account
else
  p "invalid credentials"
  redirect :home
end
end


get '/login' do

erb :login
end

get '/logout' do

session[:user] = nil
p "user has logged out"
redirect :home
end








require './models'

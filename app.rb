require 'sinatra'
require 'sinatra/activerecord'


set :database, 'sqlite3:loginlesson.sqlite3'




get '/' do
@users = User.all

erb :home
  end







get '/login' do

erb :login
end










require './models'

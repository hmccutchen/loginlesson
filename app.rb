require 'sinatra'
require 'sinatra/activerecord'


set :database, 'sqlite3:loginlesson.sqlite3'




get '/' do
p 'whatever'
@users = User.all
  end














require './models'

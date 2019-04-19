require 'sinatra'
require "pry" if development? || test?
require "sinatra/reloader" if development?


set :bind, '0.0.0.0'

get "/" do
    erb :home
end

get "/checking" do
    erb :checking
end

get "/savings" do
    erb :savings
end
 

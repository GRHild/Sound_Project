require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'koala'
require 'soundcloud'

get '/' do
  erb :index
end

post '/tracks' do
  erb :results
end

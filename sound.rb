require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :practice
end

post '/tracks' do
  erb :results
end

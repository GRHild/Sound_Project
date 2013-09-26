require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'koala'
require 'soundcloud'

require_relative './lib/soundcloudlink.rb'

include SocialOne

get '/' do
  erb :practice
end

post '/facebook' do
  @user = SocialOne::User.new
  @results = @user.get_song
  erb:results
end

# post '/facebook' do
#   @user = SocialOne::User.new
#   puts @result = @user.post_fb_text(params[:update])
#   erb :results
# end

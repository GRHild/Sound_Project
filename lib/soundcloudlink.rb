require 'rubygems'
require 'bundler/setup'
require 'koala'
require 'soundcloud'


# Authorizing and linking for Soundcloud
# create a client object with access token
require 'soundcloud'

# create client object with app and user credentials
client = Soundcloud.new(:client_id => 'YOUR_CLIENT_ID',
                        :client_secret => 'YOUR_CLIENT_SECRET',
                        :username => 'YOUR_USERNAME',
                        :password => 'YOUR_PASSWORD')

# print authenticated user's username
puts client.get('/me').username
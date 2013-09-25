require 'rubygems'
require 'bundler/setup'
require 'koala'
require 'soundcloud'


# Authorizing and linking for Soundcloud
# create a client object with access token
require 'soundcloud'

# create client object with app and user credentials
client = Soundcloud.new(:client_id => '',
                        :client_secret => '',
                        :username => '',
                        :password => '')

# print authenticated user's username
puts client.get('/me').username
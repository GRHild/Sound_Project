require 'rubygems'
require 'bundler/setup'
require 'koala'
require 'soundcloud'


# Authorizing and linking for Soundcloud
# create a client object with access token
client = Soundcloud.new(:access_token => 'YOUR_ACCESS_TOKEN')


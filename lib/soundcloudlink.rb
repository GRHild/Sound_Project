require 'rubygems'
require 'bundler/setup'
require 'koala'
require 'soundcloud'


module SocialOne

  class User

# Initialize a new user.
    def initialize

# Initializes a user via the login token. I'm not sure why its called @graph.    
      @graph = Koala::Facebook::API.new(ENV['ACCESS_TOKEN'])
    end

# Method that allows a post to go to facebook. Works in IRB.
    def post_fb_text(status_update)
      @graph.put_connections('me', 'feed', :message => status_update)
    end
  end

end
















# module SoundProject
# # Authorizing and linking for Soundcloud
# # create a client object with access token

#   class User
# # create client object with app and user credentials
# client = Soundcloud.new(:client_id => ENV['CLIENT_KEY']],
#                         :client_secret => ENV['CLIENT_SECRET'],
#                         :username => ENV['USERNAME'],
#                         :password => ENV['PASSWORD'])

# # print authenticated user's username
# puts client.get('/me').username

#   end

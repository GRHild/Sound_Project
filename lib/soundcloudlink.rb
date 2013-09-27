require 'rubygems'
require 'bundler/setup'
require 'koala'
require 'soundcloud'


module SocialOne

  class User

    attr_accessor :client 
# Initialize a new user.
    def initialize
# register a client with YOUR_CLIENT_ID as client_id_
      @client = SoundCloud.new(:client_id => ENV['CLIENT_ID'])
# Initializes a user via the login token. I'm not sure why its called @graph.    
      @graph = Koala::Facebook::API.new(ENV['ACCESS_TOKEN'])

    end

# Method that allows a post to go to facebook. Works in IRB.
    def post_fb_text(status_update)
      @graph.put_connections('me', 'feed', :message => status_update)
    end
  
    def get_song
      tracks_array = [] 
      tracks = @client.get('/tracks', :limit => 4, :order => 'hotness')
      tracks.each do |track|
        tracks_array << track.permalink_url
      
      end

      # tracks_array.each do |track| 
      #   @graph.put_connections('me', 'feed', :message => tracks)
      #   puts tracks_array
      # end
      # @client.post_fb_text(tracks_array)
    end

    # def post_song
    #   tracks_array.each do |track|
    #     post_fb_text(track)
    #   end
    # end

  end
end


# Trying to print the 2 most popular artist tracks. Kill it friend.








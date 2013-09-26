# describe SoundCloud::User do
#   describe '#user' do
#     context 'if a user has a soundcloud account' do
#       it 'should login that user' do
#         user = login("user")

#         allow(user1).to login(:soundcloud)

#         expect(SoundCloud::User).new(user).login).to eq(user.login)
#         end
#       end
#     end
# end

client = SoundCloud.new(:client_id => ENV['CLIENT_ID'])
      tracks = client.get('/tracks', :limit => 10, :order => 'hotness')
# print each link
      tracks.each do |track|
      puts track.permalink_url
    end

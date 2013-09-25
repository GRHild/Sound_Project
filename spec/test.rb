describe SoundCloud::User do
  describe '#user' do
    context 'if a user has a soundcloud account' do
      it 'should login that user' do
        user = login("user")

        allow(user1).to login(:soundcloud)

        expect(SoundCloud::User).new(user).login).to eq(user.login)
        end
      end
    end
end
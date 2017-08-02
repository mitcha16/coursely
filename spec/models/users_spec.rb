require 'rails_helper'

describe User do
  describe 'get_all_users' do
    it 'gets a response from the api' do
      VCR.use_cassette 'users/get_users' do
        users = User.get_all_users
        expect(users.class).to eq(Array)
        expect(users.first['id']).to eq(1)
      end

      VCR.use_cassette 'users/get_user' do
        user = User.get_user(1)
        expect(user.class).to eq(Hash)
        expect(user['id']).to eq(1)
      end
    end
  end
end

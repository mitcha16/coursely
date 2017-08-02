require 'rails_helper'

describe UsersController do
  describe 'call_api' do
    it 'gets a response from the api' do
      VCR.use_cassette 'users/get_users' do
        get :index
        expect(response.status).to eq(200)
        expect(response).to render_template("index")
      end

      VCR.use_cassette 'users/get_user' do
        get :show, params: {id: 1}
        expect(response.status).to eq(200)
        expect(response).to render_template("show")
      end
    end
  end
end

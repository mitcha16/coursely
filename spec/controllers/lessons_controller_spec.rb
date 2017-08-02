require 'rails_helper'

describe LessonsController do
  describe 'call_api' do
    it 'gets a response from the api' do
      VCR.use_cassette 'lessons/get_lessons' do
        get :index
        expect(response.status).to eq(200)
        expect(response).to render_template("index")
      end

      VCR.use_cassette 'lessons/get_lesson' do
        get :show, params: {id: 1}
        expect(response.status).to eq(200)
        expect(response).to render_template("show")
      end
    end
  end
end

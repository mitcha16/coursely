require 'rails_helper'

describe AssignmentsController do
  describe 'call_api' do
    it 'gets a response from the api' do
      VCR.use_cassette 'assignments/get_assignments' do
        get :index
        expect(response).to render_template("index")
      end
    end
  end
end

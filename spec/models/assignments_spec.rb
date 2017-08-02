require 'rails_helper'

describe Assignment do
  describe 'get_all_assignments' do
    it 'gets a response from the api' do
      VCR.use_cassette 'assignments/get_assignments/complete' do
        assignments = Assignment.get_assignments('complete')
        expect(assignments.class).to eq(Array)
        expect(assignments.first['status']).to eq('Complete')
      end

      VCR.use_cassette 'assignments/get_assignments/incomplete' do
        assignments = Assignment.get_assignments('incomplete')
        expect(assignments.class).to eq(Array)
        expect(assignments.first['status']).to eq('Incomplete')
      end
    end
  end
end

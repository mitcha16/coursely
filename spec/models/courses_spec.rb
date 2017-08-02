require 'rails_helper'

describe Course do
  describe 'get_all_courses' do
    it 'gets a response from the api' do
      VCR.use_cassette 'courses/get_courses' do
        courses = Course.get_all_courses
        expect(courses.class).to eq(Array)
        expect(courses.first['id']).to eq(1)
      end

      VCR.use_cassette 'courses/get_course' do
        course = Course.get_course(1)
        expect(course.class).to eq(Hash)
        expect(course['id']).to eq(1)
      end
    end
  end
end

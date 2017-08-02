require 'rails_helper'

describe Lesson do
  describe 'get_all_lessons' do
    it 'gets a response from the api' do
      VCR.use_cassette 'lessons/get_lessons' do
        lessons = Lesson.get_all_lessons
        expect(lessons.class).to eq(Array)
        expect(lessons.first['id']).to eq(1)
      end

      VCR.use_cassette 'lessons/get_lesson' do
        lesson = Lesson.get_lesson(1)
        expect(lesson.class).to eq(Hash)
        expect(lesson['id']).to eq(1)
      end
    end
  end
end

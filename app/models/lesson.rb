class Lesson < ApplicationRecord
  def self.get_all_lessons
    url = "https://coursely-api.herokuapp.com/api/v1/lessons"
    body = RestClient.get(url)
    JSON.parse(body)
  end

  def self.get_lesson(id)
    url = "https://coursely-api.herokuapp.com/api/v1/lessons/#{id}"
    body = RestClient.get(url)
    JSON.parse(body)
  end

  def self.get_assignments(id)
    url = "https://coursely-api.herokuapp.com/api/v1/lessons/#{id}/assignments"
    body = RestClient.get(url)
    JSON.parse(body)
  end
end

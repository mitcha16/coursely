class Course < ApplicationRecord
  def self.get_all_courses
    url = "https://coursely-api.herokuapp.com/api/v1/courses"
    body = RestClient.get(url)
    JSON.parse(body)
  end

  def self.get_course(id)
    url = "https://coursely-api.herokuapp.com/api/v1/courses/#{id}"
    body = RestClient.get(url)
    JSON.parse(body)
  end

  def self.get_assignments(id)
    url = "https://coursely-api.herokuapp.com/api/v1/courses/#{id}/assignments"
    body = RestClient.get(url)
    JSON.parse(body)
  end
end
